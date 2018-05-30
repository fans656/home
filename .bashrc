# general
export PS1="\w$ "

alias ls="ls --color"
alias ll="ls -lh --color"
alias la="ls -lah --color=auto"
alias sb=". ~/.bashrc"
alias eb="vim ~/.bashrc"
alias gl="git lola"
alias gs="git status"

alias tmn="tmux new -s"
alias tma="tmux attach -t"
alias tmd="tmux detach -a && tmux detach"
alias tml="tmux ls"
alias tmk="tmux kill-session -t"

alias grep="grep --color"
alias ntp="ntpupdate time.nist.gov"

alias gl="git lola"
alias gs="git status"

export PYTHONIOENCODING="UTF-8"
export EDITOR="vim"
export TERM="xterm-256color"

eval $(dircolors ~/.dircolors)


function toggle_proxy() {
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
