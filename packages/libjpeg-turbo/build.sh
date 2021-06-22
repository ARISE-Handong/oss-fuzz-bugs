#!/bin/bash

set -x

[ ! -e $(basename $0) ] && exit 1

OSSFUZZ_DIR=$(dirname $(dirname `pwd`))/oss-fuzz
INFRA_DIR=$OSSFUZZ_DIR/infra
BUILD_DIR=$OSSFUZZ_DIR/build
PROJECT=$(basename `pwd`)
FUZZER_DIR=$BUILD_DIR/out/$PROJECT

display_usage() { 
	echo "This script must be run with super-user privileges." 
	echo -e "\nUsage: $0 [-i|--id] {issue_id} [-b|--build] {buggy,fix,single} [-s|--sanitizer] {address, memory, undefined} [-f|--fuzzer] {libfuzzer, afl}"
    echo -e "Default: --sanitizer address --fuzzer library \n"
} 

if [  $# -le 3 ] 
then 
    display_usage
    exit 1
elif [[ ( $# == "--help") ||  $# == "-h" ]] 
then 
    display_usage
    exit 0
elif [[ "$EUID" -ne 0 ]]; then 
    echo "This script must be run as root!" 
    exit 1
fi 
 

#default values
SANITIZER=address
FUZZER=libfuzzer

while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    -i|--id)
	    ISSUE_ID="$2"
	    shift 
	    shift 
	    ;;
    -b|--build)
	    BUILD_MODE="$2"
	    shift 
	    shift 
	    ;;
    -s|--sanitizer)
	    SANITIZER="$2"
	    shift 
	    shift 
	    ;;
    -f|--fuzzer)
	    FUZZER="$2"
	    shift 
	    shift 
	    ;;
    *)    
	    shift 
	    ;;
esac
done

. $ISSUE_ID/info.sh $BUILD_MODE

case $BUILD_MODE in
    "buggy")
	    python3 $INFRA_DIR/build_specified_commit.py --project_name $PROJECT --commit $BUGGY_COMMIT  --engine $FUZZER --sanitizer $SANITIZER
	    ;;
    "fix")
	    python3 $INFRA_DIR/build_specified_commit.py --project_name $PROJECT --commit $FIX_COMMIT  --engine $FUZZER --sanitizer $SANITIZER
	    ;;
    "single")
	    pwd
	    python3 $INFRA_DIR/helper.py build_fuzzers --sanitizer $SANITIZER $PROJECT `pwd`/$PROJECT-repo 
	    ;;
    *)
	    echo "INVALID BUILD MODE"
	    exit
	    ;;
esac

[ ! -e BUILD ] && mkdir BUILD
cp -rv $FUZZER_DIR BUILD/$ISSUE_ID-$BUILD_MODE-$SANITIZER


