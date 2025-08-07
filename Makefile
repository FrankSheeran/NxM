##############################################################################################
#
# Makefile for the Solution
#
# License and copyright information is in the files src/doc/LICENCE and src/doc/LICENCE.NxM.
#
# See src/doc/NxM_Make_System.doc for details.
#
##############################################################################################
#
# This file will reiterate a clean, veryclean, or pristine command; or
# make a tar file for distribution with targets tar, gz, or zstd .
#
##############################################################################################

include Make.Solution
include src/make/Make.Common

SUBDIRS = ${sort ${dir ${wildcard */Makefile}}}

TarOptions  = --owner=nobody --group=nobody

# The following can probably be compressed into one rule with --auto-compress .

.PHONY: tar gz zstd

tar: $(SoluName).$(SoluVersion).tar

$(SoluName).$(SoluVersion).tar: $(SoluName).$(SoluVersion)
	tar cv $(TarOptions) $< >$@

gz: $(SoluName).$(SoluVersion).tar.gz

$(SoluName).$(SoluVersion).tar.gz: $(SoluName).$(SoluVersion)
	tar cv --gzip $(TarOptions) $< >$@

# If you don't have zstd, it's fast, very compressed, and becoming common.
# Install with "dnf install zstd".

zstd: $(SoluName).$(SoluVersion).tar.zstd

$(SoluName).$(SoluVersion).tar.zstd: $(SoluName).$(SoluVersion)
	tar cv --zstd $(TarOptions) $< >$@



# Unlike make'ing under src or under {Architecture}, make at the top
# level doesn't recurse EXCEPT for cleaning.  So instead of the
# standard mechanism to recurse, by making child directories with
# Makefile's phony targets, we do it manually.

clean::
	echo WE GOT $(SUBDIRS)
	@for subdir in $(SUBDIRS); do \
		$(DoSpace) ;\
		$(MAKE) $(MakeOptions) -C "$$subdir" $(MAKECMDGOALS) ;\
	done
