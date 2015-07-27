/*
Copyright (C) 2012  Hai-Son Le (haisonle@gmail.com)

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as
published by the Free Software Foundation, either version 3 of the
License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

//#define SEQAN_PROFILE		// enable time measuring


#define SEQAN_PARALLEL

#include <cstdio>
#include <fstream>
#include <getopt.h>
#include <iostream>
#include <set>
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <time.h>
#include <vector>

#include <tr1/unordered_map>

#include <omp.h>
#include <gsl/gsl_permutation.h>
#include <gsl/gsl_randist.h>

#include "common.h"
#include "hashmap_read_finder.h"
#include "smart_hashmap_read_finder.h"


#ifndef DEBUG
#define DEBUG 0
#endif

using namespace seqan;
using namespace std;


typedef std::tr1::unordered_map<uint64_t, uint32_t> ASSIGN_TO_READ_MAP;
typedef std::tr1::unordered_map<uint64_t, uint64_t> ASSIGN_TO_KMER_MAP;
typedef std::tr1::unordered_map<uint64_t, pair<uint64_t,int> > PARENT_MAP;

typedef std::tr1::unordered_map<uint64_t, std::set<uint64_t> > CC_MAP;

bool ReadFastaFiles(THMMFragStore& fragStore,
		    char* fn1, char* fn2) {
    char* fn1_i = fn1;
    char* fn2_i = fn2;
    bool br = false;
    while (!br) {
	while (*fn1 != ',' && *fn1 != '\0') {
	    fn1++;
	}
	if (*fn1 == '\0') {
	    br = true;
	} else {
	    *fn1 ='\0';
	}
	if (fn2) {
	    while (*fn2 != ',' && *fn2 != '\0') {
		fn2++;
	    }
	    *fn2 ='\0';
	    if (!loadReads(fragStore, fn1_i, fn2_i)) {
		return false;
	    }
	    fn2_i = ++fn2;
	} else {
	    if (!loadReads(fragStore, fn1_i)) {
		return false;
	    }
	}
	fn1_i = ++fn1;
    }

    std::cerr << "Total Reads " << length(fragStore.readSeqStore)
	      << std::endl;

    return true;
}


void help_msg() {
    const char* msg =
	"SEECER: SEquencing Error CorrEction for Rna-Seq data\n"
	"seecer [options] read1 [read2]\n"
	"--------------------------------------------\n"
	" read1, read2: are Fasta/Fastaq files.\n"
	"        If only read1 is provided, the reads are considered singles.\n"
        "        Otherwise, read1 and read2 are paired-end reads.\n"
        " *** Important ***:\n"
        " Reads should not contain Ns. Please use the provided run_seecer.sh \n"
        " script to handle Ns.\n"
	"--------------------------------------------\n"
	"Options:\n"
	" --kmer <k> : specify a different K value (default = 17).\n"
	" --kmerCount <f> : specify the file containing kmer counts. This file\n"
	"        is produced by JELLYFISH, we provided a Bash script to generate this file (run_seecer.sh).\n"
        "        If the parameter is not set, SEECER will count kmers by itself\n"
	"        (slower and memory-inefficient).\n"
	" --clusterLLH <e> : specify a different log likelihood threshold (default = -1).\n"
	" --entropy <e> : specify a different entropy threshold (default = 0.6).\n"
	" --help, -h : this help message.\n";
    fprintf(stderr, "%s\n", msg);
}


uint64_t getCC(PARENT_MAP& cc_links, uint64_t kmer) {
  uint64_t* p = &(cc_links[kmer].first);
  uint64_t v = *p;
  if (v != kmer) {
    uint64_t nv = getCC(cc_links, v);
    __sync_bool_compare_and_swap(p, v, nv);

    assert(*p == nv);
  }

  return *p;
}

uint64_t mergeCC(PARENT_MAP& cc_links, uint64_t cc1, uint64_t cc2) {

  // std::cerr << " MERGE " << cc1 << " " << cc2 << std::endl;
  
  assert(cc1 != cc2);

  if (cc1 != cc2) {

    pair<uint64_t, int>& cc1p = cc_links[cc1];
    pair<uint64_t, int>& cc2p = cc_links[cc2];

    /*
    assert(cc1 == cc1p.first);
    assert(cc2 == cc2p.first);
    */

    if (cc1 != cc1p.first) {
      std::cerr << cc1 << " " << cc1p.first << std::endl;
    }

    if (cc2 != cc2p.first) {
      std::cerr << cc2 << " " << cc2p.first << std::endl;
    }

    if (cc1p.second < cc2p.second) {
      cc1p.first = cc2;
      return cc2;
    } else if (cc1p.second > cc2p.second) {
      cc2p.first = cc1;
      return cc1;
    } else {
      cc1p.first = cc2;
      cc2p.second++;
      return cc2;
    }

  }

  return cc1;
}

template <typename T>
void assign_val(bool maxmin_switch, T* p, T val) {
  T v;
  if (maxmin_switch) {
    // max
    do {
      v = *p;
    } while (v < val && !__sync_bool_compare_and_swap(p, v, val));
  } else {
    // min
    do {
      v = *p;
    } while (v > val && !__sync_bool_compare_and_swap(p, v, val));
  }
}


int order_reads(int argc, char * argv[])
{

    int k = 19;
    const char *kmerFn = NULL;
    const char *outputFn = NULL;
    const char *indexFn = NULL;

    /* Parsing options */
    int c;
    opterr = 0;

    while (1) {
	static struct option long_options[] =
	    {
		{"verbose", no_argument, 0, 'v'},
		{"help", no_argument, 0, 'h'},
		{"kmerCount", required_argument, 0, 'k'},
		{"kmer", required_argument, 0, '5'},
		{0, 0, 0, 0}
	    };
	int option_index = 0;
	
	c = getopt_long (argc, argv, "vk:p:o:i:",
			 long_options, &option_index);
	/* Detect the end of the options. */
           if (c == -1)
	       break;

	switch (c) {
	case 0:
	    /* If this option set a flag, do nothing else now. */
	    if (long_options[option_index].flag != 0)
		break;
	    printf ("option %s", long_options[option_index].name);
	    if (optarg)
		printf (" with arg %s", optarg);
	    printf ("\n");
	    break;
	case 'o':
	    outputFn = optarg;
	    break;
	case 'i':
	    indexFn = optarg;
	    break;
	case 'v':
	    break;
	case '5':
	    k = atoi(optarg);
	    break;
	case 'k':
	    kmerFn = optarg;
	    break;
	case 'p':
	    omp_set_num_threads(atoi(optarg));
	    break;
	case 'h':
	    help_msg();
	    exit(0);
	    break;
	default:
	    printf("Too many arguments\n");
	    return -1; //abort()
	}
	
    }


    // making sure the output is valid first
    std::ofstream output(outputFn);
    
    if (!output.is_open()) {
	std::cerr << "Output file is invalid!!!" << std::endl;
	return -1;
    }

    // making sure the output is valid first
    std::ofstream index_output(indexFn);
    
    if (!index_output.is_open()) {
	std::cerr << "Index output file is invalid!!!" << std::endl;
	return -1;
    }

    
    THMMFragStore fragStore;

    bool pairedEnd = false;
    
    if (optind == argc - 1) {
	ReadFastaFiles(fragStore, argv[optind], 0);
    } else if (optind == argc - 2) {
          pairedEnd = true;
	ReadFastaFiles(fragStore, argv[optind], argv[optind+1]);
    } else {
	// print help
	help_msg();
	return -1;
    }

    HashBasedReadFinder* finder;

    if (kmerFn) {
	finder = new QGramSmartHashMapReadFinder(kmerFn, fragStore, NULL, k);
    } else {
	finder = new QGramHashMapReadFinder(fragStore, NULL, k);
    }


    //
    vector<int> unused_reads, unused_reads2;
    std::set<uint64_t> kmers_to_merge;

    ASSIGN_TO_READ_MAP kmer_assigns;
    ASSIGN_TO_KMER_MAP kmer_kmer_assigns;

    PARENT_MAP cc_links;

    bool kr_maxmin_switch = false;

    const HBRF_MAPTYPE& grammap = finder->GetGrammap();

    int total_reads = length(fragStore.readSeqStore);
    if (pairedEnd) {
      total_reads >>= 1;
    }


    for (HBRF_MAPTYPE::const_iterator it = grammap.begin(); it != grammap.end(); ++it) {
      // std::cout << " Init " << it->first
      //	      << "(" << finder->GramToString(it->first) << ")" << std::endl;
      kmer_assigns[it->first] = total_reads + 1;
      kmer_kmer_assigns[it->first] = 0;
      cc_links[it->first] = pair<uint64_t, int>(it->first, 0);

      // std::cout << "    " << kmer_assigns[it->first]
      //	      << " ----  " << cc_links[it->first].first << std::endl;
    }

    int n_reads = total_reads;
    int n_CCs = grammap.size();

    kmers_to_merge.insert(0); // dummy

    while (n_reads > 0) {
      bool coin = rand() % 2;

      if (kmers_to_merge.size() == 0)
        coin = true;
      
      if (coin) {
        unused_reads2.clear();
      } else {
        kmers_to_merge.clear();
      }
      std::cerr << "n_reads = " << n_reads << " n_CCs = " << n_CCs << std::endl;

#pragma omp parallel for
      for (int i = 0; i < n_reads; ++i) {
        int readidx = i;
        if (i < unused_reads.size()) {
	  readidx = unused_reads[i];
        }

        // assigning all kmers to this reads
        std::set<uint64_t> kmers;
        std::set<uint64_t> CCs;
        if (pairedEnd) {
	  finder->ConstructGramSet(fragStore.readSeqStore[readidx << 1], kmers); 
	  finder->ConstructGramSet(fragStore.readSeqStore[(readidx << 1) + 1], kmers); 
        } else {	
	// std::cerr << "READ " << readidx << " "
	//  	<< fragStore.readSeqStore[readidx] << std::endl;
	  finder->ConstructGramSet(fragStore.readSeqStore[readidx], kmers); 
        }

        for (std::set<uint64_t>::const_iterator it = kmers.begin(); it != kmers.end(); ++it) 
	if (kmer_assigns.find(*it) != kmer_assigns.end() ) {
	  CCs.insert(getCC(cc_links, *it));
	  // std::cerr << finder->GramToString(*it) << " in CC: "
	  //	  << finder->GramToString(getCC(cc_links, *it)) << std::endl;
	}

        if (CCs.size() > 1) {
	  if (coin) {
	    for (std::set<uint64_t>::const_iterator it = CCs.begin(); it != CCs.end(); ++it) {
	      uint32_t* p = &kmer_assigns[*it];
	      assign_val<uint32_t>(kr_maxmin_switch, p, readidx);
	      
	      // if (*p == readidx) {
	      // std::cerr << "Assign " << finder->GramToString(*it)
	      //	  << " to read " << readidx << std::endl;
	      // }
	      
	    }
	  } else {
	    std::set<uint64_t>::const_iterator it = CCs.begin();
	    uint64_t mainCC = *it;
	    ++it;
	    
	    for (;it != CCs.end(); ++it) {
	      
	      uint64_t* p = &kmer_kmer_assigns[*it];
	      uint64_t v = *p;
	      
	      assert(getCC(cc_links, mainCC) == mainCC && getCC(cc_links, *it) == *it);
	      
	      if (__sync_bool_compare_and_swap(p, v, mainCC))
#pragma omp critical
		kmers_to_merge.insert(*it);
	    }
	  }
	  
        }
	
      }
      
      std::cerr << " Step 2" << std::endl;

      if (coin) {
        // omp parallel for
#pragma omp parallel for
        for (int i = 0; i < n_reads; ++i) {
	  int readidx = i;
	  if (i < unused_reads.size()) {
	    readidx = unused_reads[i];
	  }
	  
	  // assigning all kmers to this reads
	  std::set<uint64_t> kmers;
	  std::set<uint64_t> CCs;
	  
	  if (pairedEnd) {
	    finder->ConstructGramSet(fragStore.readSeqStore[readidx << 1], kmers); 
	    finder->ConstructGramSet(fragStore.readSeqStore[(readidx << 1) + 1], kmers); 
	  } else {
	    finder->ConstructGramSet(fragStore.readSeqStore[readidx], kmers); 
	  }
	  
	  for (std::set<uint64_t>::const_iterator it = kmers.begin(); it != kmers.end(); ++it) 
	    if (kmer_assigns.find(*it) != kmer_assigns.end() ) {
	      CCs.insert(getCC(cc_links, *it));
	    }
	  
	  if (CCs.size() > 1) {
	    int n = CCs.size();
	    for (std::set<uint64_t>::const_iterator it = CCs.begin(); it != CCs.end(); ++it) {
	      if (kmer_assigns[*it] != readidx) {
		CCs.erase(it);
	      }
	    }
	    
	    if (n > CCs.size()) {
#pragma omp critical
	      {
		unused_reads2.push_back(readidx);
	      }
	    }
	    
	    if (CCs.size() > 1) { // joining CCs
	      // std::cerr << "P2  : " << readidx << std::endl;
	      std::set<uint64_t>::const_iterator it = CCs.begin();
	      uint64_t cc = *it;
	      for (++it; it != CCs.end(); ++it) {
		cc = mergeCC(cc_links, cc, *it);
	      }
#pragma omp atomic
	      n_CCs -= CCs.size() - 1;
	    }
	  }
        }
        kr_maxmin_switch = !kr_maxmin_switch;
        unused_reads.swap(unused_reads2);
        n_reads = unused_reads.size();
        
      } else { // random coin
        
        CC_MAP CC_tomerge;
        
        std::cerr << "#kmer to merge: " << kmers_to_merge.size() << std::endl;
        
        for (std::set<uint64_t>::const_iterator it = kmers_to_merge.begin(); it != kmers_to_merge.end(); ++it) {
	  CC_tomerge[kmer_kmer_assigns[*it]].clear();
        }

        for (std::set<uint64_t>::const_iterator it = kmers_to_merge.begin(); it != kmers_to_merge.end(); ++it) {
	  if (CC_tomerge.find(*it) == CC_tomerge.end()) {
	  // assert(getCC(cc_links, kmer_kmer_assigns[*it]) == kmer_kmer_assigns[*it]);
	    CC_tomerge[kmer_kmer_assigns[*it]].insert(*it);
	  }
        }
        
        // vectorize to parallel
        std::vector<pair<uint64_t, const std::set<uint64_t>*> > sets;
        sets.reserve(CC_tomerge.size());
        for (CC_MAP::const_iterator it = CC_tomerge.begin(); it != CC_tomerge.end(); ++it) {
	// std::cerr << "Merging head : " << it->first << " " << it->second.size() << std::endl;
	sets.push_back(pair<uint64_t, const std::set<uint64_t>*> (it->first, &it->second) );
        }

#pragma omp parallel for
        for (int idx = 0; idx < sets.size(); ++idx) {
	// merging CCs;
	uint64_t cc = sets[idx].first;
	/*
	std::cerr << "Merging head : " << cc << " " << sets[idx].second << " "
		<< sets[idx].second->size() << std::endl;
	*/
	for (std::set<uint64_t>::const_iterator it = sets[idx].second->begin();
	     it != sets[idx].second->end(); ++it) {
	  /*
	  std::cerr << "Merge " << cc << " with " << *it
		  << " ~ " << getCC(cc_links, cc) << " with " << getCC(cc_links, *it)
		  << std::endl;
	  */
	  cc = mergeCC(cc_links, cc, *it);
	}
#pragma omp atomic
	n_CCs -= sets[idx].second->size();
        }
        
      } // random coin
      
     
    } // while there are reads

    CC_MAP CC_readIDs;
    
    for (PARENT_MAP::const_iterator it = cc_links.begin(); it != cc_links.end(); ++it) {
      CC_readIDs[getCC(cc_links, it->first)].insert(it->first);
    }

    bool *fProcessedReads = static_cast<bool*>(calloc(total_reads, sizeof(bool)));

    int n = 0;

    for (CC_MAP::const_iterator it = CC_readIDs.begin(); it != CC_readIDs.end(); ++it) {

      index_output << n << std::endl;

      // std::cout << finder->GramToString(it->first) << ": " << std::endl;
      
      for (std::set<uint64_t>::const_iterator it2 = it->second.begin();
	 it2 != it->second.end(); ++it2) {
        // std::cout << finder->GramToString(*it2) << " ";
        
        HBRF_MAPTYPE::const_iterator elem = grammap.find(*it2);
        assert(elem != grammap.end());
        const map_struct& allreads = elem->second;
        for (int i = 0; i < allreads.count; ++i) {
	int readidx = allreads.ids[i];
	if (pairedEnd) {
	  readidx >>= 1;
	}

	if (!fProcessedReads[readidx]) {
	  if (pairedEnd) {
	    output << ">" << fragStore.readNameStore[readidx << 1] << std::endl
		 << fragStore.readSeqStore[readidx << 1] << std::endl;
	    output << ">" << fragStore.readNameStore[(readidx << 1) + 1] << std::endl
		 << fragStore.readSeqStore[(readidx << 1) + 1] << std::endl;
	    n += 2;
	  } else {	
	    output << ">" << fragStore.readNameStore[readidx] << std::endl
		 << fragStore.readSeqStore[readidx] << std::endl;
	    n++;
	  }
	  fProcessedReads[readidx] = true;
	}
        }
        
      }

      // std::cout << std::endl;
      
    }


    index_output << n << std::endl;

    output.close();
    index_output.close();

    free(fProcessedReads);

    delete finder;
    return 0;
}

int main(int argc, char * argv[]) {
    //omp_set_nested(1);
    //omp_set_dynamic(false);
    
    if (omp_get_nested()) {
	std::cerr << "NESTED THREADS supported" << std::endl;
    }
    omp_set_num_threads(MIN(8, omp_get_max_threads()));
    order_reads(argc, argv);
}
