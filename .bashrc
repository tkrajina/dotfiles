export PATH="$PATH:~/bin"
alias gm="git-multi"
alias mee="mvn eclipse:eclipse -DdownloadSources=true  -Declipse.useProjectReferences=false -DuseProjectReferences=false"
alias yyyymmddhhmmss="date +\"%Y-%m-%dT%H:%M:%S\""
alias yyyymmdd="date +\"%Y-%m-%d\""
set -o vi

VIRTUAL_ENV_DISABLE_PROMPT=true source ~/pyenv/default/bin/activate

# Copy this file from https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
source ~/bin/git-prompt.sh
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWDIRTYSTATE="true"
PS1="\[\033[01;32m\]\u \[\033[01;34m\]\w\[\033[01;33m\]\$(__git_ps1 \" (%s)\") \[\033[01;34m\]\$\[\033[00m\] "

top -n 1 | head -15 && echo && df -h
