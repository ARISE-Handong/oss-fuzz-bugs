#!/bin/bash

[ ! -e $(basename $0) ] && echo "PLEASE USE THIS SCRIPT FROM PACKAGE DIRECTORY" && exit 1

export BUGGY_COMMIT=c63ccbf878bb0989cfbe51740ca2008bdc766a8e
export FIX_COMMIT=7a70a03ba01d657296be61f0ec98ca6990f51578
export CORRECT_COMMIT=7a70a03ba01d657296be61f0ec98ca6990f51578

# Single-fault version fault injection
if [ $1 = "single" ] 
then
    [ ! -e clamav-repo ] && git clone https://github.com/Cisco-Talos/clamav-devel.git clamav-repo
    cd clamav-repo
    git reset --hard $CORRECT_COMMIT
    cd ../

    cp 29454/faulty_codes/pdf.c ./clamav-repo/libclamav/pdf.c
fi



