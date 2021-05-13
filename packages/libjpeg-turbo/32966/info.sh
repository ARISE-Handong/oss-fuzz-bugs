#!/bin/bash

[ -e $(basename $0) ] && echo "PLEASE USE THIS SCRIPT FROM PACKAGE DIRECTORY" && exit 1

export BUGGY_COMMIT=df17d398eca83d6de2f42cade70d317bebeec071
export FIX_COMMIT=f35fd27ec641c42d6b115bfa595e483ec58188d2
export CORRECT_COMMIT=ebaa67ea32b3f3f28e10ab1ee4ed9bbacd632013

# Single-fault version fault injection
if [ $1 = "single" ] 
then
    [ ! -e libjpeg-turbo-repo ] && git clone https://github.com/sailfishos-mirror/libjpeg-turbo.git libjpeg-turbo-repo
    cd libjpeg-turbo-repo
    git reset --hard $CORRECT_COMMIT
    cd ../

    cp 32966/faulty_codes/jcphuff.c ./libjpeg-turbo-repo/jcphuff.c
fi



