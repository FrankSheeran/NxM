##############################################################################################
#
# Makefile for Solution/src
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

include ../Make.Solution
include make/Make.Common

SUBDIRS = ${sort ${dir ${wildcard */Makefile}}}

all $(MAKECMDGOALS):: $(SUBDIRS)

.PHONY: $(SUBDIRS)

$(SUBDIRS)::
	@$(DoSpace)
	$(DoSubMake)
