## Globals.pm - this file is created from Globals.txt
##
## $Id$
##
## $Log$

# Author: Timothy Bailey

# The following section sets site-specific global variables  
# that are set during running "configure"
#
# SITE_MAINTAINER - Contact person in case of trouble. The server will
#                   automatically send email to this address in case of error.
# SITE_URL        - URL of the server. 
# MEME_DlIR       - meme installation directory
# MEME_LOGS       - location of LOGS/
# MEME_DB      - location of databases
# MEME_BIN        - location of bin/
# MEME_WEB        - directory containing web-related files, default $MEME_DIR/web
# MAXTIME         - wall time limit for job to run
#

package Globals;

require Exporter;
@ISA = qw(Exporter);
@EXPORT = qw(
         $SITE_MAINTAINER
         $SITE_URL
         $MEME_DIR
         $MEME_LOGS
         $MEME_DB
         $MEME_BIN
         $MEME_WEB
         $MAXTIME
         $debug
         $MAX_UPLOAD_SIZE
         $MAXDATASET
         $MAXMEMESEQS
         $MAXMOTIFS
         $MINMEMESEQW
         $MINW
         $MAXW
         $CMAX
         $DEFAULTMAXW
         $MINSITES
         $MAXSITES
         $MINPSPW
         $MAXPSPW
);

our $SITE_MAINTAINER = '@lanec1.compbio.cs.cmu.edu';
our $SITE_URL = 'http://meme.nbcr.net/meme';
our $MEME_DIR = '/home/yuhao/meme';
our $MEME_LOGS = '/home/yuhao/meme/LOGS';
our $MEME_DB = '/home/yuhao/meme/db';
our $MEME_BIN = '/home/yuhao/meme/bin';
our $MEME_WEB = '/home/yuhao/meme/web';
our $MAXTIME = '7200';

# turn on/off debug output
our $debug = 0;

# maximum allowed sequence characters in upload file
our $MAX_UPLOAD_SIZE = 1000000;    # note: change mast.in if you change this

# maximum size of training set
our $MAXDATASET = 60000;         # change doc in  meme.in if you change this

# maximum number of sequences in the MEMESEQ pipeline
our $MAXMEMESEQS = 600;

# this must be MAXG-1 in src/INCLUDE/user.h
our $MAXMOTIFS = 100;

our $MINMEMESEQW = 8;         # change doc in  meme.in if you change this
our $MINW = 2;                # change doc in  meme.in if you change this
our $MAXW = 300;              # change doc in  meme.in if you change this
our $DEFAULTMAXW = 30;        # default for web form motif size
our $CMAX = 100;              # window size for trimming sequences
our $MINSITES = 2;            # change doc in  meme.in if you change this
our $MAXSITES = 600;          # change doc in  meme.in if you change this
our $MINPSPW = 3;             # change doc in  meme.in if you change this
our $MAXPSPW = 20;            # change doc in  meme.in if you change this
