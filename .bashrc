############################################################## general
export PS1="\w$ "  # "~$ "
export EDITOR="vim"
export HISTCONTROL="erasedups:ignoredups"  # no duplications in history

export PYTHONIOENCODING="UTF-8"
export TERM="xterm-256color"

export LANGUAGE="en"
export LC_ALL="en_US.UTF-8"

############################################################## paths
export enod="/c/data/private/enod"
export ub="/c/Data/Source/ub2"
export no="~/fme/data/files/notes"
#alias share="sudo mount -t vboxsf ub2 ~/share"

############################################################## commands
alias ls="\ls --color"
alias ll="\ls -lh --color"
alias la="\ls -lha --color"
alias tree="\tree -I __pycache__"
alias grep="grep --color"

alias gl="git lola"
alias gs="git status"
alias tma="tmux attach -t"
alias tmd="tmux detach -a && tmux detach"
alias tml="tmux ls"
alias top="top -c"

alias sb=". ~/.bashrc"
alias eb="vim ~/.bashrc"
alias dr="vim /c/Data/Source/ub2/old-blogs-2020-08-07/txt/diary.txt"
alias eno="cd $enod"
alias pw="vim $enod/pwd.txt"
alias to="vim $enod/todo/todo.txt"

#alias syncdate="sudo ntpdate ntp.ubuntu.com"
#alias ntp="ntpupdate time.nist.gov"

#alias ifr="sudo ifdown enp0s3 && sudo ifup enp0s3"

eval $(dircolors ~/.dircolors)

toggle_proxy() {
    if [ -z $HTTP_PROXY ]; then
        export HTTP_PROXY="http://127.0.0.1:1080"
        export HTTPS_PROXY="http://127.0.0.1:1080"
        export http_proxy="http://127.0.0.1:1080"
        export https_proxy="http://127.0.0.1:1080"
        echo "Proxy on"
    else
        unset HTTP_PROXY
        unset HTTPS_PROXY
        unset http_proxy
        unset https_proxy
        echo "Proxy off"
    fi
}
alias pro="toggle_proxy"

####################################### post process
PATH="$PATH:$HOME/.bin"
PATH=$(echo -n $PATH | tr : '\n' | cat -n | sort -k2 -k1n | uniq -f1 | sort -nk1,1 | cut -f2- | tr '\n' :)
export PATH=${PATH%:}
