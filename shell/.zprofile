if (systemctl -q &>/dev/null);
		then
		systemctl --user import-environment PATH DBUS_SESSION_BUS_ADDRESS
		systemctl --no-block --user start xsession.target
fi
stty -ixon
#export fpath=("${fpath}" "~/.local/share/zcomplete")

export EXPORTS="${HOME}/.exports"
export ALIASES="${HOME}/.aliases"


source $EXPORTS
export EDITOR=vim
export JDK_HOME="/usr/lib/jvm/default/"
export PATH=$LOCAL_BIN:$PATH:$SFDX_PATH:$JDK_HOME/bin
#source $ALIASES

[[ -z $DISPLAY && $XDG_VTNR -eq 2 ]] && exec startx
