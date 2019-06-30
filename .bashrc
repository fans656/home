# general
export PS1="\w$ "
export EDITOR="vim"
export HISTCONTROL="erasedups:ignoredups"

export PYTHONIOENCODING="UTF-8"
export TERM="xterm-256color"

export LANGUAGE="en"
export LC_ALL="en_US.UTF-8"

PATH="$PATH:/home/fans656/java/gradle-5.3/bin"

alias ls="\ls --color"
alias ll="\ls -lh --color"
alias la="\ls -lha --color"
alias sb=". ~/.bashrc"
alias eb="vim ~/.bashrc"
alias gl="git lola"
alias gs="git status"

alias tma="tmux attach -t"
alias tmd="tmux detach -a && tmux detach"
alias tml="tmux ls"

alias python3="python3.7"

alias syncdate="sudo ntpdate ntp.ubuntu.com"

alias grep="grep --color"
alias ntp="ntpupdate time.nist.gov"

alias gl="git lola"
alias gs="git status"

alias ifr="sudo ifdown enp0s3 && sudo ifup enp0s3"
alias serve="python -m SimpleHTTPServer"

eval $(dircolors ~/.dircolors)

toggle_proxy() {
    if [ -z $HTTP_PROXY ]; then
        export HTTP_PROXY="http://192.168.56.1:1080"
        export HTTPS_PROXY="http://192.168.56.1:1080"
        echo "Proxy on"
    else
        unset HTTP_PROXY
        unset HTTPS_PROXY
        echo "Proxy off"
    fi
}
alias pro="toggle_proxy"

####################################### post process

# unique paths
PATH=$(echo -n $PATH | tr : '\n' | cat -n | sort -k2 -k1n | uniq -f1 | sort -nk1,1 | cut -f2- | tr '\n' :)
export PATH=${PATH%:}
