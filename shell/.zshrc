# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

ZSH=/usr/share/oh-my-zsh/
ZSH_THEME="ys"
ZSH_DISABLE_COMPFIX=true

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
ZSH_CUSTOM=$HOME/.config/oh-my-zsh/custom/
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
  gitfast
  zsh-autosuggestions 
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

ALIASES=~/.aliases
HISTFILE=~/.histfile
HISTSIZE=9999
SAVEHIST=9999

setopt autocd beep nomatch notify extendedglob
set -o emacs
bindkey -e
bindkey ' ' magic-space

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source $ALIASES
cd
#source $HOME/.config/zshrc.compl
git config --global user.name "Kirill <akinevz> Nevzorov"
git config --global user.email "akinevz@outlook.com"
