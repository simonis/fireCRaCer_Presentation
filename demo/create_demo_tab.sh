#!/bin/bash

MYPATH=$(dirname $(realpath -s $0))

# See https://unix.stackexchange.com/questions/353386/when-is-a-multiline-history-entry-aka-lithist-in-bash-possible
# for why we need bash 5+ for multiline commands in the bash history file.
/share/software/bash-5.2_bin/bin/bash --noprofile --init-file <( echo ". $MYPATH/create_demo_shell.sh $1 $MYPATH")
