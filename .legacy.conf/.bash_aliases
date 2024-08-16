alias dev='cd /home/bernardo/dev'
alias config='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'
alias ll='ls -l'

# command line utilities with docker
alias shellcheck='docker run --rm -v "$PWD:/mnt" koalaman/shellcheck:stable'
