##############################################################################################
#
# Makefile for Solution/src/doc
#
# License and copyright information is in the files src/doc/LICENCE and src/doc/LICENCE.NxM.
#
# See src/doc/NxM_Make_System.doc for details.
#
##############################################################################################
#
# This file will reiterate any make command through all subdirectories with Makefile's.
# Additionally, clean, veryclean and pristine will remove garbage files.
#
##############################################################################################

include ../../Make.Solution
include ../make/Make.Common

# Hack as Make.Common defines this relative to {Architecture}/{Distribution}/{Project}
# directories, but from our current location we're one level closer to the root.

DistDir = ../../$(DistName)

SUBDIRS = ${sort ${dir ${wildcard */Makefile}}}

all:: $(SUBDIRS)
$(MAKECMDGOALS):: $(SUBDIRS)

.PHONY: $(SUBDIRS)

$(SUBDIRS)::
	@$(DoSpace)
	$(DoSubMake)
