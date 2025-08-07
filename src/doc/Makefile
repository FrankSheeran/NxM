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
# This file will:
#
# 1) Copy every file in this directory whose name doesn't match a few examples of temporary
#    files into DocDir mentioned in Make.Common
#
# 2) run another gmake in any child directory that has a Makefile
#
# 3) clean, veryclean and pristine will remove garbage files.
#
##############################################################################################

include ../../Make.Solution
include ../make/Make.Common

# Hack as Make.Common defines this relative to {Architecture}/{Distribution}/{Project}
# directories, but from our current location we're one level closer to the root.

DistDir     = ../../$(DistName)

SUBDIRS = ${sort ${dir ${wildcard */Makefile}}}

all:: $(SUBDIRS) InstallToDistribution
$(MAKECMDGOALS):: $(SUBDIRS)

.PHONY: $(SUBDIRS)

$(SUBDIRS)::
	@$(DoSpace)
	$(DoSubMake)



# This is considered a directory for PUBLIC documentation so copy
# everything, except the Makefile and various garbage files.  This
# could be modified to instead copy all *.txt, *.doc, *.md etc.

# cp -u avoids copying if the destination file is newer than the source.

# If you are copying this file as an example to install other kinds of files,
# change the find if appropriate, and change $(DocDir) to your choice of
# destination.  It's up to you whether you define that in Make.Common and use
# it here, or simply define it here.

InstallToDistribution:
	mkdir -p $(DocDir)
	find . -maxdepth 1 -type f \
		! -name 'Makefile' \
		! -name '*~' \
		! -name '~*' \
		! -name '*.log' \
		! -name '*.tmp' \
		! -name 'core' \
		-exec cp -u {} $(DocDir) \;
