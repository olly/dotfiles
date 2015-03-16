if [ "$TERM" != "dumb" ]; then
  # Thanks @twam!
  # https://github.com/twam/.dotfiles/blob/2faea5431bfa917e4b326fc087bff14df055d6f5/ls_colors/ls_colors.zsh
  autoload -U colors && colors
  LS_COLORS="di=34:ln=35:so=36:pi=33:ex=32:bd=33:cd=33:su=37;41:sg=37;43:tw=00;42:ow=34;42:"
  LSCOLORS="exfxgxdxcxdxdxhbhdacec"

  # Do we need Linux or BSD Style?
  if ls --color -d . &>/dev/null 2>&1
  then
    # Linux Style
    export LS_COLORS=$LS_COLORS
    alias ls='ls --color=tty'
  else
    # BSD Style
    export LSCOLORS=$LSCOLORS
    alias ls='ls -G'
  fi

  # Use same colors for autocompletion
  zmodload -a colors
  zmodload -a autocomplete
  zmodload -a complist
  zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
fi
