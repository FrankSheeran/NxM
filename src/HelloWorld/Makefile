##############################################################################################
#
# Makefile for a Source Project
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

SUBDIRS = ${sort ${dir ${wildcard */Makefile}}}

all $(MAKECMDGOALS):: $(SUBDIRS)

.PHONY: $(SUBDIRS)

$(SUBDIRS)::
	@$(DoSpace)
	$(DoSubMake)

# This makefile is used only under the SOURCE directory src.  No
# compilation takes place here so we don't remove object files,
# depends and so on.  Compilation is under
# {Architecture}/{Configuration}/{Project} .  That is where object
# files etc. are created, and that Makefile there will clean them up.
