#!/bin/bash

mkdir -p ./result

echo start_testing_bc
taskset 1 ./gapbs/bc -g 25 -n 20 > ./result/bc.output
echo start_testing_bfs
taskset 1 ./gapbs/bfs -g 25 -n 20 > ./result/bfs.output
echo start_testing_cc
taskset 1 ./gapbs/cc -g 25 -n 20 > ./result/cc.output
echo start_testing_cc_sv
taskset 1 ./gapbs/cc_sv -g 25 -n  10 > ./result/cc_sv.output
echo start_testing_pr
taskset 1 ./gapbs/pr -g 25 -n 20 > ./result/pr.output
echo start_testing_sssp
taskset 1 ./gapbs/sssp -g 25 -n 20 > ./result/sssp.output
echo start_testing_tc
taskset 1 ./gapbs/tc -g 20 -n 20 > ./result/tc.output

