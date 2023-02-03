
MYPATH=$2

unset JAVA_TOOL_OPTIONS

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

export PATH=/priv/simonisv/Git/fireCRaCer:/share/software/Java/corretto-17/bin:$PATH
export FC=/priv/simonisv/Git/fireCRaCer/deps
alias la='ls -la'

export PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u@aws \[\e[33m\]\w\[\e[0m\]\n\$ "

DIR=$1

if [ "$1" == "firecracker1" ]; then
:
else
if [ "$1" == "firecracker2" ]; then
DIR="firecracker1"
else
if [ "$1" == "crac" ]; then
:
else
if [ "$1" == "firecracer" ]; then
:
else
if [ "$1" == "firecracerclone" ]; then
:
else
if [ "$1" == "firecracercmd" ]; then
:
else
if [ "$1" == "uffd" ]; then
:
fi
fi
fi
fi
fi
fi
fi

if [ "$1" != "firecracker2" ]; then
  rm -rf /tmp/_$DIR
fi
mkdir -p /tmp/_$DIR
cd /tmp/_$DIR

# See https://unix.stackexchange.com/questions/353386/when-is-a-multiline-history-entry-aka-lithist-in-bash-possible
# for why we need bash 5+ for multiline commands in the bash history file.
set -o history
unset HISTFILE
export HISTTIMEFORMAT=''
# Only keep the predefined history
export HISTIGNORE='*'
history -c
history -r $MYPATH/.history_$1
