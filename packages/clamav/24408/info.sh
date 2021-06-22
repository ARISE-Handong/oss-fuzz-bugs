#!/bin/bash

[ ! -e $(basename $0) ] && echo "PLEASE USE THIS SCRIPT FROM PACKAGE DIRECTORY" && exit 1

export BUGGY_COMMIT=3c556dc1a28298312eb64b60cc03c83adda2e777
export FIX_COMMIT=205d8dcd6e4c980a23e362f455ce5682e5f059b9
export CORRECT_COMMIT=7a70a03ba01d657296be61f0ec98ca6990f51578

# Single-fault version fault injection
if [ $1 = "single" ] 
then
    [ ! -e clamav-repo ] && git clone https://github.com/Cisco-Talos/clamav-devel.git clamav-repo
    cd clamav-repo
    git clean -d -x -f
    git reset --hard $CORRECT_COMMIT
    cd ../

    cp 24408/faulty_codes/pdf.c ./clamav-repo/libclamav/pdf.c
fi



