# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

HOSTNAME_S=${HOSTNAME%%.*}
SHELL_S=${SHELL##*/}
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME_S}:${PWD} in $SHELL_S\007"'
export PS1='[\h:\W]\$ '

alias l='ls -al'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias grep='grep --color'

export LESSCHARSET=utf-8
export HISTSIZE=1000
export SVN_EDITOR=vim export LANG=ko_KR.utf8

ulimit -c unlimited

export  LS_COLORS="no=00:fi=00:ln=00;36:pi=40;33:so=00;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;32:*.cmd=00;32:*.exe=00;32:*.com=00;32:*.btm=00;32:*.bat=00;32:*.sh=00;32:*.csh=00;32:*.tar=00;31:*.tgz=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.zip=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.bz=00;31:*.tz=00;31:*.rpm=00;31:*.cpio=00;31:*.jpg=00;35:*.gif=00;35:*.bmp=00;35:*.xbm=00;35:*.xpm=00;35:*.png=00;35:*.tif=00;35:"
