#!/bin/bash

[ -e $(basename $0) ] && echo "PLEASE USE THIS SCRIPT FROM PACKAGE DIRECTORY" && exit 1

export BUGGY_COMMIT=3311fc00010c6cb305d87525c9ef60ebdf036cfc
export FIX_COMMIT=b1079002ad451aab896617098b6bcbaae1d967e4
export CORRECT_COMMIT=ebaa67ea32b3f3f28e10ab1ee4ed9bbacd632013

# Single-fault version fault injection
if [ $1 = "single" ] 
then
    [ ! -e libjpeg-turbo-repo ] && git clone https://github.com/sailfishos-mirror/libjpeg-turbo.git libjpeg-turbo-repo
    cd libjpeg-turbo-repo
    git clean -d -x -f
    git reset --hard $CORRECT_COMMIT
    cd ../

    cp 33001/faulty_codes/rdppm.c ./libjpeg-turbo-repo/rdppm.c
fi



