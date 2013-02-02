# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd
unsetopt extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/inoue/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

PROMPT="%m:%~%# "
PROMPT2="%_%% "
setopt hist_ignore_dups
setopt share_history
setopt auto_pushd
setopt list_packed
autoload -U sticky-note
STICKYSIZE=10000

backward-delete-char-beep() {
  if (( CURSOR == 0 )) ; then
    zle beep ;
  fi ;
  zle backward-delete-char
}
zle -N backward-delete-char-beep
bindkey "^?" backward-delete-char-beep

precmd () {
  if [ $? != 0 ]; then
    echo -n \\a
  fi
}
