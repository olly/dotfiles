function _git_current_branch() {
  ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
  ref=$(command git rev-parse --short HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

function _git_prompt_info() {
  current_branch=$(_git_current_branch)

  if [ ! -z "$current_branch" ]; then
    _theme_prompt_info 'git' ${current_branch}
  fi
}

alias gc='git commit -v'
compdef _git gc=git-commit

alias gca='git commit -v -a'
compdef _git gca=git-commit

alias gco='git checkout'
compdef _git gco=git-checkout

alias ggpull='git pull origin $(_git_current_branch)'
compdef ggpull=git

alias ggpush='git push origin $(_git_current_branch)'
compdef ggpush=git

alias gst='git status'
compdef _git gst=git-status
