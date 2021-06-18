#!/bin/bash

[ ! -e $(basename $0) ] && echo "PLEASE USE THIS SCRIPT FROM PACKAGE DIRECTORY" && exit 1

export BUGGY_COMMIT=dd830b3ffe30a76fbe8c1f13ebc7483c9ff792e5
export FIX_COMMIT=ebaa67ea32b3f3f28e10ab1ee4ed9bbacd632013
export CORRECT_COMMIT=ebaa67ea32b3f3f28e10ab1ee4ed9bbacd632013

# Single-fault version fault injection
if [ $1 = "single" ] 
then
    [ ! -e libjpeg-turbo-repo ] && git clone https://github.com/sailfishos-mirror/libjpeg-turbo.git libjpeg-turbo-repo
    cd libjpeg-turbo-repo
    git reset --hard $CORRECT_COMMIT
    cd ../

    cp 32982/faulty_codes/rdbmp.c ./libjpeg-turbo-repo/rdbmp.c
fi



