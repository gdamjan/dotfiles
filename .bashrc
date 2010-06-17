# Bash settings
shopt -s histappend
HISTIGNORE="[   ]*:&:bg:fg"
#Increase history size
HISTSIZE=1000
HISTFILESIZE=1000
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

#PS1='[\u@\h \W]\$ '
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '


export TZ=Europe/Skopje
export PATH=~/bin:/usr/local/bin:$PATH


export CVS_RSH=ssh
export GREP_OPTIONS='--color'

export PYTHONSTARTUP=$HOME/.pystartup
export PYTHONUSERBASE=$HOME/py/my


# Some usefull shortcuts
alias ls='LC_COLLATE=C ls --color=auto -F --group-directories-first'
alias d=ls
alias cd..="cd .."
alias cd...="cd ../.."
alias v="ls -l"

alias public_vnc="x11vnc -avahi -nopw -viewonly -shared -forever"
alias kvm="qemu-kvm -m 384 -usbdevice tablet -k en-gb"
alias myip="curl http://legolas.on.net.mk/myip"

# Convert .flv files from youtube to mpeg4 .avi files
function flv2avi () {
  OLDNAME=$1
  NEWNAME=$(basename "$OLDNAME" .flv).avi
  ffmpeg -i "$OLDNAME" -acodec copy -vcodec mpeg4 "$NEWNAME"
}

# Create a PEP-370 Python virtual env
function create_env () {
    ENV=`readlink -f $1` || exit 1
    mkdir $ENV || exit 1
    mkdir $ENV/bin || exit 1
    cat <<-EOF > $ENV/bin/activate
	export PYTHONUSERBASE=$ENV
	_OLD_PS1=\$PS1
	PS1="[$1]\$PS1"
	_OLD_PATH=\$PATH
	PATH=$ENV/bin:\$PATH
	alias deactivate='PATH=\$_OLD_PATH; PS1=\$_OLD_PS1; unset PYTHONUSERBASE; unalias deactivate'
	EOF
    echo "source $ENV/bin/activate in your shell to activate this environment."
}
