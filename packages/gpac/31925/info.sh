#!/bin/bash

[ -e $(basename $0) ] && echo "PLEASE USE THIS SCRIPT FROM PACKAGE DIRECTORY" && exit 1

export BUGGY_COMMIT=c4a5109dad73abe25ad12d8d529a728ae98d78ca
export FIX_COMMIT=8986422c21fbd9a7bf6561cae65aae42077447e8
export CORRECT_COMMIT=e74be5976a6fee059c638050a237893f7e9a3b23

# Single-fault version fault injection
if [ $1 = "single" ] 
then
    [ ! -e gpac-repo ] && git clone https://github.com/gpac/gpac.git gpac-repo
    cd gpac-repo
    git clean -d -x -f
    git reset --hard $CORRECT_COMMIT
    cd ../

    cp 31925/faulty_codes/box_code_drm.c ./gpac-repo/src/isomedia/
fi



