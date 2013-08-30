

_tmux()
{

  local subcommands="attach new-session list-sessions"
  local cur="${COMP_WORDS[COMP_CWORD]}"
  local prev="${COMP_WORDS[COMP_CWORD-1]}"

  case $prev in 
    -t)
      COMPREPLY=( $(compgen -W "$(tmux list-sessions | awk -F ':' '{print $1}')" -- $cur) )
      return 0
  esac

  COMPREPLY=( $(compgen -W "$(tmux list-commands | awk '{print $1'})" -- $cur))
  return 0
}

complete -F _tmux tmux
