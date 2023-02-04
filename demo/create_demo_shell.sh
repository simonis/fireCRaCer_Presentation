
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

export PATH=/priv/simonisv/Git/fireCRaCer:/share/software/Java/corretto-17/bin:/share/software/criu-3.17.1/criu/:$PATH
# Need a new version of 'kill' which can pass integer value with the signal using sigqueue
# See: https://gitlab.com/procps-ng/procps/-/merge_requests/32
export PATH=/share/software/procps-master_bin/bin:$PATH
# Disable the bash builtin 'kill'
enable -n kill
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
if [ "$1" == "crac1" ]; then
  export CONSOLE_LOG_PATTERN="%clr(${LOG_LEVEL_PATTERN:-%5p}) %clr(%-40.40logger{39}){cyan} %clr(:){faint} %m%n${LOG_EXCEPTION_CONVERSION_WORD:-%wEx}"
  # export _JAVA_OPTIONS="-XX:+UnlockDiagnosticVMOptions -XX:+UnlockExperimentalVMOptions -Dlogging.level.org.apache.catalina.authenticator.AuthenticatorBase=DEBUG"
else
if [ "$1" == "crac2" ]; then
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
else
if [ "$1" == "criu1" ]; then
  export CONSOLE_LOG_PATTERN="%clr(${LOG_LEVEL_PATTERN:-%5p}) %clr(%-40.40logger{39}){cyan} %clr(:){faint} %m%n${LOG_EXCEPTION_CONVERSION_WORD:-%wEx}"
else
if [ "$1" == "criu2" ]; then
  DIR="criu1"
  export CONSOLE_LOG_PATTERN="%clr(${LOG_LEVEL_PATTERN:-%5p}) %clr(%-40.40logger{39}){cyan} %clr(:){faint} %m%n${LOG_EXCEPTION_CONVERSION_WORD:-%wEx}"
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi

if [ "$1" != "firecracker2" -a "$1" != "criu2" ]; then
  rm -rf /tmp/_$DIR
fi
mkdir -p /tmp/_$DIR
cd /tmp/_$DIR
if [ "$1" == "firecracker1" ]; then
  truncate -s 0 fc.log && rm -rf fc.sock
fi
if [ "$1" == "criu1" ]; then
  mkdir ./criu_snapshot
fi

# See https://unix.stackexchange.com/questions/353386/when-is-a-multiline-history-entry-aka-lithist-in-bash-possible
# for why we need bash 5+ for multiline commands in the bash history file.
set -o history
unset HISTFILE
export HISTTIMEFORMAT=''
# Only keep the predefined history
export HISTIGNORE='*'
history -c
history -r $MYPATH/.history_$1
