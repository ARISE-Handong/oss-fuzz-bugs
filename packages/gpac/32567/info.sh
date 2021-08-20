#!/bin/bash

[ -e $(basename $0) ] && echo "PLEASE USE THIS SCRIPT FROM PACKAGE DIRECTORY" && exit 1

export BUGGY_COMMIT=cd3738dea038dbd12e603ad48cd7373ae0440f65
export FIX_COMMIT=b2eab95e07cb5819375a50358d4806a8813b6e50
export CORRECT_COMMIT=e74be5976a6fee059c638050a237893f7e9a3b23

# Single-fault version fault injection
if [ $1 = "single" ] 
then
    [ ! -e gpac-repo ] && git clone https://github.com/gpac/gpac.git gpac-repo
    cd gpac-repo
    git clean -d -x -f
    git reset --hard $CORRECT_COMMIT
    cd ../

    cp 32567/faulty_codes/avc_ext.c ./gpac-repo/src/isomedia
fi



