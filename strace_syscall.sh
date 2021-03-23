#!/bin/bash
# DEFAULT_SYSCALLS=prlimit64,rt_sigaction,rt_sigprocmask,set_tid_address,set_robust_list,getdents64,sched_getaffinity
DEFAULT_SYSCALLS=rt_sigaction,rt_sigprocmask 
echo "Default: "$DEFAULT_SYSCALLS", type enter to use default variables"
read -p "Type system calls to trace: " INPUT_SYSCALLS

if [[ $INPUT_SYSCALLS == "" ]]; then
		echo use DEFAULT syscalls: $DEFAULT_SYSCALLS  
		INPUT_SYSCALLS=$DEFAULT_SYSCALLS
fi

echo $INPUT_SYSCALLS

strace -f -e trace=$INPUT_SYSCALLS -q -qq $@
