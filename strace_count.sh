#!/bin/bash

DIR_RESULT=$PWD/results/
FORMATTED_RESULT=''

mkdir -p ${DIR_RESULT}$(dirname $1) && strace -f -D -c -o "$DIR_RESULT$1$2".trace_result $@
FORMATTED_RESULT=$(cat "$DIR_RESULT$1$2".trace_result | rev | cut -d" " -f1 | rev | sed '1,3d' | sed '$d' | sed '$d' | tr '\n' ',')
mkdir -p ${DIR_RESULT}/csv/$(dirname $1)
echo "bench name,argument,systemcall" >  ${DIR_RESULT}/csv/$1$2.csv
echo "$(basename $1),$@,${FORMATTED_RESULT}" >> ${DIR_RESULT}/csv/$1$2.csv
