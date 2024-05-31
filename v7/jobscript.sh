#!/bin/bash -l
# properties = {properties}
test -f ~/.bash_env && source ~/.bash_env
set -ueo pipefail
export LOCALSCRATCH=/tmp/KM_SCRATCH_$JOB_ID
mkdir $LOCALSCRATCH
trap "rm -rf $LOCALSCRATCH" EXIT INT
{exec_job}
