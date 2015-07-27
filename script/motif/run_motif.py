#!/usr/bin/python

import sys, getopt
import os
import subprocess
from time import localtime, strftime

def main(argv):
    inputfile = ''
    outputfile = ''
    meme = ''
    prefix = 'tmp'
    db = None
#    customdb = None
    try:
#        opts, args = getopt.getopt(argv,"hi:o:",["meme=","prefix=", "db=", "custom-db="])
        opts, args = getopt.getopt(argv,"hi:o:",["meme=","prefix=", "db="])
    except getopt.GetoptError:
        print 'test.py -i <inputfile> -o <outputfile>'
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-h':
            print 'test.py -i <inputfile> -o <outputfile>'
            sys.exit()
        elif opt in ("-i"):
            inputfile = arg
        elif opt in ("--meme"):
            meme = arg
        elif opt in ("--prefix"):
            prefix = arg
        elif opt in ("--db"):
            db = arg
#        elif opt in ("--custom-db"):
#            customdb = arg

    print 'Input file is ', inputfile
    print 'MEME dir is ', meme

#    if db is None:
#        db = ['/home/cicek/chipSeq/JASPAR_CORE_2014.meme'] #, meme +'db/wei2010_human_mws.meme'] #,  meme + 'db/uniprobe_mouse.meme'];

    print 'Database: ', db
    
#    if customdb is not None:
#        print 'Custom Database: ', customdb
        
    outputdir = os.path.abspath(os.curdir) + '/' + prefix + '_out'
    if not os.path.exists(outputdir):
        os.mkdir(outputdir)

    # Running DREME
    dreme_fn = open(outputdir + '/_dreme_', 'w')
    print 'Runing DREME ', strftime("%Y-%m-%d %H:%M:%S", localtime())

    #subprocess.call([meme +'dreme', '-png', '-e', '1e-5', '-v', '1', '-m', '20' , '-oc',
    subprocess.call([meme +'bin/dreme', '-eps', '-desc', '-dfile', '-e', '1e-5', '-v', '1', '-m', '20', 
                 '-oc', outputdir + '/dreme_out', '-p', inputfile], stdout=dreme_fn, stderr=subprocess.STDOUT); 

    dreme_fn.close();

    # Running TOMTOM
    if db is not None:
        db = db.split(":")
        for i in xrange(len(db)):
            tomtom_fn = open(outputdir + '/_tomtom' + str(i+1) + '_', 'w')
            print 'Runing TOMTOM ', strftime("%Y-%m-%d %H:%M:%S", localtime())
            prog = [meme +'bin/tomtom', '-eps', '-verbosity', '1', '-min-overlap', '5', '-dist', 'pearson' ,'-evalue', '-thresh', '0.05',
                     '-oc', outputdir + '/tomtom' + str(i+1) + '_out', outputdir + '/dreme_out/dreme.xml', db[i]];
            subprocess.call(prog, stdout=tomtom_fn, stderr=subprocess.STDOUT); 
            tomtom_fn.close();

#    if customdb is not None:
#        tomtom_fn = open(outputdir + '/_tomtom2_', 'w')
#        print 'Runing TOMTOM ', strftime("%Y-%m-%d %H:%M:%S", localtime())
        
#        subprocess.call([meme +'bin/tomtom', '-png', '-verbosity', '1', '-min-overlap', '5', '-dist', 'pearson' ,'-evalue', '-thresh', '0.05',
#        subprocess.call([meme +'bin/tomtom', '-eps', '-verbosity', '1', '-min-overlap', '5', '-dist', 'pearson' ,'-evalue', '-thresh', '0.05',
#                         '-oc', outputdir + '/tomtom2_out', outputdir + '/dreme_out/dreme.xml', customdb
#                         ],
#                    stdout=tomtom_fn, stderr=subprocess.STDOUT); 
        
#        tomtom_fn.close();


                                                                                           

if __name__ == "__main__":
    main(sys.argv[1:])
