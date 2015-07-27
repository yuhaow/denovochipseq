#!/usr/bin/python

import sys, getopt
import numpy
from matplotlib import pyplot

def movingaverage(interval, window_size):
    window = numpy.ones(int(window_size))/float(window_size)
    return numpy.convolve(interval, window, 'same')


def contigIsGood(probs, words):
    probs_smooth = movingaverage(probs, 10);

    max_v = 0;
    max_i = 0;

    for i in range(0, len(probs_smooth)):
        if (probs_smooth[i] > max_v):
            max_v = probs_smooth[i];
            max_i = i;

    smax_v = 0;
    smax_i = 0;
    
    for i in range(len(probs_smooth)-1, -1, -1):
        if (probs_smooth[i] > smax_v and i != max_i):
            smax_v = probs_smooth[i];
            smax_i = i;

    mean_i = int( (max_i + smax_i) / 2);
    mean_v = probs_smooth[mean_i];

    #print "%d\t%d" % ((0 - mean_i), len(probs_smooth));
    #print "%d\t%d" % ((len(probs_smooth) - mean_i), len(probs_smooth));
    
    
    ## Finding the peaks
    if ((max(probs_smooth) - min(probs_smooth) >= 1) and (int(words[0]) >= 40) and (int(words[2]) >= 10)):
        # Length is at least 40 and contig has at least 10 reads
        #print "L = %d" % int(words[0]);
        #pyplot.plot(probs_smooth);
        #pyplot.plot(max_i, max_v, 'b^', markersize=10);
        #pyplot.plot(smax_i, smax_v, 'bv', markersize=10);
        #pyplot.plot(mean_i, mean_v, 'r*', markersize=10);
        #pyplot.show();
        return 1;
        
    return 0;

def main(argv):    
   inputfile = ''
   outputfile = ''
   try:
      opts, args = getopt.getopt(argv,"hi:o:",["ifile=","ofile="])   
   except getopt.GetoptError:
      print 'test.py -i <inputfile> -o <outputfile>'
      sys.exit(2)
   for opt, arg in opts:
      if opt == '-h':
         print 'test.py -i <inputfile> -o <outputfile>'
         sys.exit()
      elif opt in ("-i", "--ifile"):
         inputfile = arg
      elif opt in ("-o", "--ofile"):
         outputfile = arg
   print 'Input file is "', inputfile
   print 'Output file is "', outputfile


   fin = open(inputfile, 'r');
   fout = open(outputfile, 'w');
   fout_info = open(inputfile + "_info", 'w'); ###edited by yuhao

   while 1:
       line = fin.readline()
       if not line:
           break
       words = line.split();
       probs = [float(v) for v in words[4:]];
       #print probs;
       cov = [];
       for i in range(0, len(probs), 5):
           cov.append(sum(probs[i:(i+4)]));

       if (contigIsGood(cov, words)):
           fout.write(">%s\n" % words[3]);  ###changed by yuhao
           fout.write("%s\n" % words[1]);
           fout_info.write("seleted:%s" % line);  ###edited by yuhao
       else:
           fout_info.write("discarded:%s" % line);

if __name__ == "__main__":
   main(sys.argv[1:])
