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

#ifndef HASHMAP_READ_FINDER_
#define HASHMAP_READ_FINDER_


#include "common.h"
#include "read_finder.h"
#include "stats_keeper.h"
#include <tr1/unordered_map>

#include <fstream>
#include <set>
#include <vector>

#define BIT_SHIFT 2

using namespace seqan;

class QGramHashMapReadFinder : public HashBasedReadFinder {
public:
    QGramHashMapReadFinder(THMMFragStore& fragStore, StatsKeeper* stats_keeper, int k);
    virtual ~QGramHashMapReadFinder();

    virtual void GetReads(int cluster_id,
			  const DnaString& core,
			  int idx[], int idx_l,
			  int core_start,
			  int core_len,
			  ReadThread& rthread,
			  PositionInfo& pos,
			  HMMCluster* hmmcluster,
			  Emission* buffer,
			  int buffer_iter,
			  unsigned buffer_length);


    virtual int GetMaximumReadLength() {
	return max_read_length;
    }

    virtual void PrintStats(const char* fn);

private:
    THMMFragStore& fragStore;
    StatsKeeper* stats_keeper;

    ulong readCount;

    int* retrieved_count;
    int max_read_length;

    void BuildIndex();
    void AddReadToIndex(ulong i, std::set<uint64_t>& local_gram_set);

};

#endif
