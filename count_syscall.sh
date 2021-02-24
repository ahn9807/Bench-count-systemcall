#!/bin/bash

# Please put first argument as specific classfication word

#./strace_count.sh ./leveldb/db_bench
#./strace_count.sh ./sysbench/src/sysbench cpu --cpu-max-prime=100000 --threads=1 run 
#./strace_count.sh ./sysbench/src/sysbench memory --memory-oper=write run
#./strace_count.sh ./sysbench/src/sysbench memory --memory-oper=read run
#./strace_count.sh ./sysbench/src/sysbench fileio --file-total-size=512M prepare
#./strace_count.sh ./sysbench/src/sysbench fileio --file-test-mode=rndrw --max-time=10 --max-reqeusts=0 run
#./strace_count.sh ./sysbench/src/sysbench fileio cleanup
#./strace_count.sh ./sysbench/src/sysbench threads run
#./strace_count.sh ./sysbench/src/sysbench mutex run
#touch fio_test_file
#./strace_count.sh ./fio/fio --rw=rw --directory=$PWD --name fio_test_file --direct=1 -bs=4K --size=128M --numjobs=4 --time_based --runtime=10 --group_reporting --norandommap
#rm fio_test_file
#./strace_count.sh ./gapbs/bc -g 10 -n 1
#./strace_count.sh ./gapbs/bfs -g 10 -n 1
#./strace_count.sh ./gapbs/cc -g 10 -n 1
#./strace_count.sh ./gapbs/cc_sv -g 10 -n 1
#./strace_count.sh ./gapbs/converter -g 10 -n 1
#./strace_count.sh ./gapbs/pr -g 10 -n 1
#./strace_count.sh ./gapbs/sssp -g 10 -n 1
#./strace_count.sh ./gapbs/tc -g 10 -n 1
cd ./lmbench
../strace_count.sh make results
cd .. 
#./strace_count.sh ./redis/src/redis-benchmark
