#!/bin/bash

[ -e $(basename $0) ] && echo "PLEASE USE THIS SCRIPT FROM PACKAGE DIRECTORY" && exit 1

export BUGGY_COMMIT=da59a5b8fed9e1c260b8e87ea0bfe7d8d5369fcd
export FIX_COMMIT=e74be5976a6fee059c638050a237893f7e9a3b23
export CORRECT_COMMIT=e74be5976a6fee059c638050a237893f7e9a3b23

# Single-fault version fault injection
if [ $1 = "single" ] 
then
    [ ! -e gpac-repo ] && git clone https://github.com/gpac/gpac.git gpac-repo
    cd gpac-repo
    git clean -d -x -f
    git reset --hard $CORRECT_COMMIT
    cd ../

    cp 31902/faulty_codes/isomedia_dev.h ./gpac-repo/include/gpac/internal/isomedia_dev.h
    cp 31902/faulty_codes/box_code_adobe.c ./gpac-repo/src/isomedia/box_code_adobe.c
fi



