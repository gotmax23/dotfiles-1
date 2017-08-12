# Load Programs
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"  # load

eval $(thefuck --alias)

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

[ -s "/usr/share/autoenv-git/activate.sh" ] && source /usr/share/autoenv-git/activate.sh


# git aliases
alias gs="git status"
alias gd="git diff"
gh() {
  if [ $# -eq 1 ]; then
    command git clone git@github.com:RealOrangeOne/${1} && cd ${1}
  else
    command git clone git@github.com:${1}/${2} && cd ${2}
  fi
}

alias t="tig"
alias ts="tig status"


# Gnome
gd-lock() {
  sessionid=`loginctl list-sessions | grep $USER | awk '{print $1}'`
  loginctl lock-session $sessionid
}
gd-unlock() {
  sessionid=`loginctl list-sessions | grep $USER | awk '{print $1}'`
  loginctl unlock-session $sessionid
}
alias gdl="gd-lock"
alias gdu="gd-unlock"

alias y="yoga"
alias ym="yoga mode"


# miscellaneous software aliases
alias serve="python2 -m SimpleHTTPServer"
alias vi="vim"
alias regen-ssh-conf="assh config build > ~/.ssh/config"
alias yolo="yaourt -Syyau --noconfirm"


# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'