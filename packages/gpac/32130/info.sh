#!/bin/bash

[ -e $(basename $0) ] && echo "PLEASE USE THIS SCRIPT FROM PACKAGE DIRECTORY" && exit 1

export BUGGY_COMMIT=c0b116512dce4ed77eb7c04bb37168fa15ff67b1
export FIX_COMMIT=020ca151321a9692a28e63c88f1dbbe9deca9813
export CORRECT_COMMIT=e74be5976a6fee059c638050a237893f7e9a3b23

# Single-fault version fault injection
if [ $1 = "single" ] 
then
    [ ! -e gpac-repo ] && git clone https://github.com/gpac/gpac.git gpac-repo
    cd gpac-repo
    git reset --hard $CORRECT_COMMIT
    cd ../

    cp 32130/faulty_codes/av_parsers.c ./gpac-repo/src/media_tools
fi



