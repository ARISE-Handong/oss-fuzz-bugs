#!/bin/bash

[ -e $(basename $0) ] && echo "PLEASE USE THIS SCRIPT FROM PACKAGE DIRECTORY" && exit 1

export BUGGY_COMMIT=8081a6b06cc9f3ceeb06e9a8664db8ae1cca6c16
export FIX_COMMIT=20490786224f4a8256fb395deb9c05084db91708
export CORRECT_COMMIT=7a70a03ba01d657296be61f0ec98ca6990f51578

# Single-fault version fault injection
if [ $1 = "single" ] 
then
    [ ! -e clamav-repo ] && git clone https://github.com/Cisco-Talos/clamav-devel.git clamav-repo
    cd clamav-repo
    git clean -d -x -f
    git reset --hard $CORRECT_COMMIT
    cd ../

    cp 23348/faulty_codes/blob.c ./clamav-repo/libclamav/blob.c
    cp 23348/faulty_codes/entconv.c ./clamav-repo/libclamav/entconv.c
    cp 23348/faulty_codes/vba_extract.c ./clamav-repo/libclamav/vba_extract.c
fi



