systemctl --user import-environment PATH DBUS_SESSION_BUS_ADDRESS
systemctl --no-block --user start xsession.target
stty -ixon
#export fpath=("${fpath}" "~/.local/share/zcomplete")

export EXPORTS="${HOME}/.exports"
export ALIASES="${HOME}/.aliases"

source $EXPORTS
export PATH=$LOCAL_BIN:$PATH
#source $ALIASES

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
