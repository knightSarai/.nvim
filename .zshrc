# If you come from bash you might have to change your $PATH.
# export PYENV_ROOT="$HOME/.pyenv"

# export PYENV_VIRTUALENV_DISABLE_PROMPT=1

bindkey -s ^f "tmux-sessionizer\n"

# export  PYENV_PATH="/home/knight/.pyenv/shims:${PATH}"

# PYENV_PATH=$HOME/.pyenv/bin
# export PATH=/bin:/usr/local/bin:\$PYENV_PATH:$PATH
# ZH_PATH=/bin/usr/local/bin/
#export PATH=$PYENV_PATH:\$ZH_PATH

# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init --path)"
# eval "$(pyenv virtualenv-init -)"

# alias vim=nvim


# #Projects
alias dev="cd ~/code && clear"


# notes
alias draft="nvim ~/Documents/dev/draf.txt"
alias mark='~/marktext-x86_64.AppImage'
alias wiki="vim -c VimwikiIndex"
alias wikidir="cd ~/Documents/knight-wiki"

function synwiki {
    git add .;
    git commit -m 'Add Notes';
    git push;
}


function dual() {
  if [[ $1 == "off" ]]; then
    xrandr --output HDMI-2 --off
    xrandr --output eDP-1 --auto
  elif [[ $1 == "on" ]]; then
    xrandr --output HDMI-2 --auto
  else
    xrandr --output HDMI-2 --auto
    xrandr --output eDP-1 --auto --$1-of HDMI-2
  fi
}

# Shell
alias cl="clear"
alias rel="source ~/.zshrc && clear"
alias lz="exa -abghHliS"
alias tree="exa -abghHliS --long --tree"
function mkd { mkdir $1 && cd $1;}

# Docker
function dca () {
  CURRIMGS="$(docker images -aq)"
  CURRCONTS="$(docker ps -a -q)"

  if [[ $CURRCONTS ]]; then
    docker rm -f $CURRCONTS
  else
    echo "No Running Containers"
  fi

  if [[ $CURRIMGS ]]; then
    docker rmi -f $CURRIMGS
  else
    echo "No Images"
  fi
}

function dexec () {
  docker exec -it $(docker ps -l | awk 'NR==2, NR==2 {print $1}') bash
}


# Path to your oh-my-zsh installation.
export ZSH="/home/knight/.oh-my-zsh"

ZSH_THEME="fino"

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-vi-mode
)


source $ZSH/oh-my-zsh.sh


ZVM_VI_INSERT_ESCAPE_BINDKEY=jk

source /home/knight/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source /home/knight/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias lg='lazygit'

