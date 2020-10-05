PATH="$PATH:$HOME/.rbenv/bin"
PATH="$PATH:/usr/local/go/bin"
PATH="$PATH:/home/fans656/java/gradle-5.3/bin"

alias tree="\tree -I __pycache__"

alias fmedev="~/bin/fme.sh"
alias fme="~/src/fme/fme"
alias tp="python3 t.py"

eval "$(rbenv init -)"
export RBENV_VERSION="2.7.1"

# general
export PS1="\w$ "
export EDITOR="vim"
export HISTCONTROL="erasedups:ignoredups"

export PYTHONIOENCODING="UTF-8"
export TERM="xterm-256color"

export LANGUAGE="en"
export LC_ALL="en_US.UTF-8"
export DEV="true"
export linode="45.79.84.13"

export pysite="/usr/local/lib/python3.7/site-packages"

alias top="top -c"
alias j="jupyter lab --ip 0.0.0.0"

alias ls="\ls --color"
alias ll="\ls -lh --color"
alias la="\ls -lha --color"
alias sb=". ~/.bashrc"
alias eb="vim ~/.bashrc"
alias no="vim ~/src/fme/data/files/notes/todo.md"
alias gl="git lola"
alias gs="git status"
alias dk="docker" && complete -F _docker dk
#alias dr="vim /home/fans656/enod/diary.txt"
alias pw="vim /home/fans656/enod/pwd.txt"
alias dr="vim /home/fans656/share/old-blogs-2020-08-07/txt/diary.txt"
alias todo="vim /home/fans656/enod/todo/todo.txt"
alias e='vim /home/fans656/share/enod/cloud$(curl -s localhost.fans656.me/api/local/get-current)'

#alias sync="rsync -av ~/share/enod/cloud/ root@linode:/root/fans656.me/data/ --delete"
#alias bk="rsync -av ~/share/enod/cloud/ ~/enod-cloud --delete"
alias sync="rsync -av --delete /home/fans656/share/old-blogs-2020-08-07/txt/files/ 172.105.194.139:/root/fans656.me/data/files/site/compatible/text/"

export share=~/share
alias share="sudo mount -t vboxsf ub2 ~/share"

export enod=$share/enod

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
        export http_proxy="http://192.168.56.1:1080"
        export https_proxy="http://192.168.56.1:1080"
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

# unique paths
PATH=$(echo -n $PATH | tr : '\n' | cat -n | sort -k2 -k1n | uniq -f1 | sort -nk1,1 | cut -f2- | tr '\n' :)
export PATH=${PATH%:}
