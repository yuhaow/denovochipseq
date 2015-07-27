## $Id$
##
## Process this file with automake to produce Makefile.in
##
## # $Log$
## # Revision 1.3  2005/09/15 21:35:28  nadya
## # remove extra trailing slash
## #
## # Revision 1.2  2005/09/14 00:39:52  nadya
## # add mast sample sequences
## #
## # Revision 1.1.1.1  2005/07/25 23:21:55  nadya
## # Importing from meme-3.0.14, and adding configure/make
## #
##

##############################################
# some examples are also used in tests: check
# scripts/metatest.pl.in before changing

AUTOMAKE_OPTIONS = no-dependencies


SUBDIRS = \
  compute_prior_dist_example_output_files \
  sample_opal_scripts

EXAMPLES = \
  At.fa \
  sample-kabat.seq \
  sample-glam2-aln.dna \
  sample-glam2-aln.protein \
  sample-dna-Klf1.fa \
  sample-dna-motif.meme-io \
  sample-protein-motif.meme-io

EXAMPLES_TAR = \
  centrimo_example_output_files.tgz \
  dreme_example_output_files.tgz \
  fimo_example_output_files.tgz \
  glam2_example_output_files.tgz \
  glam2scan_example_output_files.tgz \
  mast_example_output_files.tgz \
  mcast_example_output_files.tgz \
  meme_example_output_files.tgz \
  memechip_example_output_files.tgz \
  spamo_example_output_files.tgz \
  tomtom_example_output_files.tgz 

if WEBSITE
exdir = $(WEBDIR)/examples
other_exdir = $(WEBDIR)/doc/examples
else
exdir = $(prefix)/doc/examples
other_exdir = $(exdir)
endif

ex_DATA = $(EXAMPLES)

install-data-hook:
	tar xzvf centrimo_example_output_files.tgz -C $(other_exdir)
	tar xzvf dreme_example_output_files.tgz -C $(other_exdir)
	tar xzvf fimo_example_output_files.tgz -C $(other_exdir)
	tar xzvf glam2_example_output_files.tgz -C $(other_exdir)
	tar xzvf glam2scan_example_output_files.tgz -C $(other_exdir)
	tar xzvf mast_example_output_files.tgz -C $(other_exdir)
	tar xzvf mcast_example_output_files.tgz -C $(other_exdir)
	tar xzvf meme_example_output_files.tgz -C $(other_exdir)
	tar xzvf memechip_example_output_files.tgz -C $(other_exdir)
	tar xzvf spamo_example_output_files.tgz -C $(other_exdir)
	tar xzvf tomtom_example_output_files.tgz -C $(other_exdir)

# If .svnignore file doesn't exist
# create an empty one
.svnignore:
	if [ -e .svn ] ; then touch .svnignore ; fi

# Update SVN svn:ignore property
# If .svnignore exists and longer then 0 bytes.
.svnignore.old:.svnignore
	if [ -e .svn ] ; \
  then \
    if [ -s .svnignore ] ; \
    then \
      svn propset svn:ignore -F .svnignore .  ; \
      cp .svnignore .svnignore.old; \
    fi \
  fi

EXTRA_DIST = $(EXAMPLES) $(EXAMPLES_TAR)
