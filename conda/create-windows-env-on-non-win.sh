#!/bin/sh
# Creating Windows environments on non Windows systems is currently not possible
# as conda tries to do prefix replacement but files on Windows aren't prepared for
# that.
#
# This is a hacky way to create the environment to e.g. inspect it for file sizes.

mkdir env
pushd env
cat ../conda-lock-file | grep -v '^#' | grep -v '^@' | parallel --gnu "wget {}"
for archive in `ls *.tar.bz2`; do tar xf $archive && rm $archive; done
popd
