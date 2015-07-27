## $Id$
##
## Process this file with automake to produce Makefile.in

AUTOMAKE_OPTIONS = no-dependencies

SUBDIRS = src scripts tests website doc etc

EXTRA_DIST = ARCHIVE_REVISION ARCHIVE_DATE

# Note these should be created by bootstrap
ARCHIVE_DATE:
	date > ARCHIVE_DATE

ARCHIVE_REVISION:
	hg id -i > ARCHIVE_REVISION

install-data-hook: dbdir

dbdir:
	mkdir -p $(MEME_DB)

install-data-local:
	mkdir -p $(MEME_LOGS)
	chmod a+w $(MEME_LOGS)

distdir = $(PACKAGE)_$(VERSION)

distclean-local: clean-local
clean-local: clean-ac
clean-ac:
	rm -rf autom4te.cache

test:
	cd scripts; $(MAKE) check

# Do not include .svn directories in the distribution
# Update the release version and date
dist-hook:
	rm -rf `find $(distdir) -name .hg`
	hg id -i > ARCHIVE_REVISION
	date > ARCHIVE_DATE
