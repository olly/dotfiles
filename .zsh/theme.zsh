# allow variable substitution in the prompt
setopt prompt_subst

if [ "$SSH_CONNECTION" ]; then
  HOSTNAME="%{$fg_bold[red]%}%n@%m %{$reset_color%}"
else
  HOSTNAME=""
fi

function _theme_prompt_info() {
  echo " [%{$fg[blue]%}$1%{$reset_color%}:%{$fg_no_bold[red]%}$2%{$reset_color%}]"
}

PROMPT='$HOSTNAME%{$fg_bold[magenta]%}%c %(!.%{$fg[red]%}#.%{$fg_no_bold[green]%}❯)%{$reset_color%} '
RPROMPT='$(_git_prompt_info)%{$reset_color%}'
