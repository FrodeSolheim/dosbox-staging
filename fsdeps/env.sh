# Intended for sourcing by other shell scripts
# This file is automatically generated by fs-package

# export FSDEPS_NAME=project-name
# export FSDEPS_PREFIX=$HOME/.fsdeps/$FSDEPS_NAME
export FSDEPS_PREFIX="`pwd`/fsdeps/_prefix"

export CMAKE_PREFIX_PATH=$FSDEPS_PREFIX

export C_INCLUDE_PATH=$FSDEPS_PREFIX/include
export CPLUS_INCLUDE_PATH=$FSDEPS_PREFIX/include
export LIBRARY_PATH=$FSDEPS_PREFIX/lib:$FSDEPS_PREFIX/lib64
export PKG_CONFIG_PATH=$FSDEPS_PREFIX/lib/pkgconfig:$FSDEPS_PREFIX/lib64/pkgconfig

export PATH=$FSDEPS_PREFIX/bin:$PATH
export LD_LIBRARY_PATH=$FSDEPS_PREFIX/lib:$FSDEPS_PREFIX/lib64

export MACOSX_DEPLOYMENT_TARGET=10.9
