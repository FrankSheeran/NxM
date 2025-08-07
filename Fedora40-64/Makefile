##############################################################################################
#
# Makefile for an Architecture
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
# IF/WHEN YOU CREATE A NEW ARCHITECTURE, copy this file manually.
#
##############################################################################################

include ../src/make/Make.Common
include ../Make.Solution

SubDirs                  = ${sort ${patsubst %/,%,${dir ${wildcard */}}}}
SubDirMakefiles          = ${patsubst %,%/Makefile,${SubDirs}}
SubDirMakeConfigurations = ${patsubst %,%/Make.Configuration,${SubDirs}}

all $(MAKECMDGOALS):: $(SubDirs)

.PHONY: $(SubDirs)

$(SubDirs):: $(SubDirMakefiles) $(SubDirMakeConfigurations)
	@$(DoSpace)
	$(DoSubMake)



# The following could be additionally dependent on updates to the
# source of the cp, but that would wipe out hand-written destination
# files if people had altered the template.  If you do need to
# hand-write a custom Configuration/Makefile, do so before running
# gmake in the Architecture directory.

$(SubDirMakefiles):
	cp ../src/make/Arch.Conf.Makefile.Template $@
