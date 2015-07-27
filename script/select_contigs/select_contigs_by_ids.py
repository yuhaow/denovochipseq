#!/usr/bin/python

import sys, getopt, re
import numpy
from matplotlib import pyplot

def main(argv):    
   inputfile = ''
   outputfile = ''
   readfile = ''
   try:
      opts, args = getopt.getopt(argv,"hi:o:r:",["ifile=","ofile=", "rfile="])   
   except getopt.GetoptError:
      print 'test.py -i <inputfile> -o <outputfile> -r <readfile>'
      sys.exit(2)
   for opt, arg in opts:
      if opt == '-h':
         print 'test.py -i <inputfile> -o <outputfile>'
         sys.exit()
      elif opt in ("-i", "--ifile"):
         inputfile = arg
      elif opt in ("-o", "--ofile"):
         outputfile = arg
      elif opt in ("-r", "--rfile"):
         readfile = arg

   fin = open(inputfile, 'r');
   fout = open(outputfile, 'w');

   filter_reads = set();
   
   while 1:
       line = fin.readline();
       if not line:
           break
       v = line.strip();
       filter_reads.add(v);
   fin.close();
   
   fread = open(readfile, 'r');
   while 1:
       line = fread.readline();
       if not line:
           break
       v = line.strip();
       if v[0] == '>':
          if v[1:] in filter_reads:
               fout.write(line);
               line = fread.readline();
               fout.write(line);
       
if __name__ == "__main__":
   main(sys.argv[1:])
