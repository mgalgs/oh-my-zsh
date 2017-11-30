local host_color=${host_color:-005}
local user="%{$fg[green]%}%n%{$fg[grey]%}@%F{$host_color}%m%f%{$reset_color%}"
#local pwd="%{$fg[blue]%}%~%{$reset_color%}"
local return_code="%(?..%{$fg[red]%}(%? ↵%)%{$reset_color%})"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"

PROMPT='${user} %{$fg_bold[blue]%}${PWD/#$HOME/~}%{$reset_color%} $(git_prompt_info)$(git_prompt_status)%{$reset_color%} %{$fg_bold[grey]%}%*%{$reset_color%} ${return_code}
$ '
#RPROMPT="${return_code} ${pwd} ${git_branch} "
