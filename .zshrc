autoload -U compinit promptinit colors
compinit
promptinit; prompt gentoo
colors

zstyle ':completion::complete:*' use-cache 1
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

export PS1="%{$fg[yellow]%}%* %{$fg[green]%}%~ %{$fg[red]%}%% %{$reset_color%}"
export SHELL=/bin/zsh
export HISTSIZE=2000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
export EDITOR="emacs -nw"

bindkey ';5D' backward-word
bindkey ';5C' forward-word

setopt hist_ignore_all_dups
#setopt correctall
setopt hist_ignore_space

alias -g ls='ls --color'
alias -g e='emacs -nw'
alias -g grep='grep --color'
