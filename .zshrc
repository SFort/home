ZDOTDIR=~/.zsh
# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="nicoulaj"

DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="yyyy-mm-dd"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)
zshcache_time="$(date +%s%N)"

autoload -Uz add-zsh-hook

_rehash_precmd() {
  if [[ -a /var/cache/zsh/pacman ]]; then
    local paccache_time="$(date -r /var/cache/zsh/pacman +%s%N)"
    if (( zshcache_time < paccache_time )); then
      rehash
      zshcache_time="$paccache_time"
    fi
  fi
}
add-zsh-hook -Uz precmd _rehash_precmd
ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

alias rudeps="pacman -Qtdq | trizen -Rns -"
alias ssh="TERM=xterm-256color ssh"
#alias sway="TERMINAL=/bin/foot sway"
alias sway="TERMINAL=/bin/zutty startx" # ii don't remember what i did to autostart sway
alias rsync_progress="rsync -ah --progress"
alias la="ls --color=tty -lAhb"
alias ls="ls --color=tty -b"

yt-get(){
for l in "$@"; do;echo `youtube-dl --download-archive /dev/null --output '%(upload_date)s.%(title)s.%(id)s.%(ext)s' -qf 22 $l || echo "FAILED: $l"` &; done
}
yt-id(){
yt-dlp --print channel_url --playlist-items 1 "$1"
}
# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh/history
HISTSIZE=100
SAVEHIST=1000
bindkey -e
