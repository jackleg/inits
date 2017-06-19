# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

HOSTNAME_S=${HOSTNAME%%.*}
SHELL_S=${SHELL##*/}
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME_S}:${PWD} in $SHELL_S\007"'
export PS1='[\h:\W]\$ '

alias ll='ls -al'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias grep='grep --color'
alias python_ctags="ctags -R --fields=+l --languages=python -f ./tags ."

export LESSCHARSET=utf-8
export HISTSIZE=1000
export SVN_EDITOR=vim
export LANG=ko_KR.utf8

ulimit -c unlimited

if [ "$TERM" != "dumb" ]; then
	if [ $(uname) == "Linux" ]; then
		alias ls='ls --color=auto'
		export LS_COLORS='no=00:fi=00:ln=00;36:pi=40;33:so=00;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;32:*.cmd=00;32:*.exe=00;32:*.com=00;32:*.btm=00;32:*.bat=00;32:*.sh=00;32:*.csh=00;32:*.tar=00;31:*.tgz=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.zip=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.bz=00;31:*.tz=00;31:*.rpm=00;31:*.cpio=00;31:*.jpg=00;35:*.gif=00;35:*.bmp=00;35:*.xbm=00;35:*.xpm=00;35:*.png=00;35:*.tif=00;35:*.tiff=01;35:*.png=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:*.tex=01;33:*.sxw=01;33:*.sxc=01;33:*.lyx=01;33:*.pdf=0;35:*.ps=00;36:*.asm=1;33:*.S=0;33:*.s=0;33:*.h=0;31:*.c=0;35:*.cxx=0;35:*.cc=0;35:*.C=0;35:*.o=1;30:*.am=1;33:*.py=0;34:'
	else
		# for OS X
		alias ls='ls -G'
		export LSCOLORS=Exfxcxdxbxegedabagacad
	fi

	export CLICOLOR=1
fi

# for CDH client setting
# CDH에서 streaming을 할 때 필요한 환경변수
export HADOOP_HOME=/data1/cdh/opt/cloudera/parcels/CDH
export CDH_MR2_HOME=${HADOOP_HOME}
