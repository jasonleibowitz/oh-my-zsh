# leibo.zsh-theme
# Repo: https://github.com/jasonleibowitz/oh-my-zsh/tree/leibo_theme
# Direct Link: https://github.com/jasonleibowitz/oh-my-zsh/blob/leibo_theme/themes/leibo.zsh-theme
# This theme was modified from the great af-magic theme by andy fleming

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# primary prompt
PROMPT='$FG[237]------------------------------------------------------------%{$reset_color%}
$FG[253]%n \
$FG[033]%~ \
$(git_prompt_info)
$FG[105]%(!.#.💾 )%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'

# color vars
eval my_gray='$FG[237]'
eval my_orange='$FG[214]'
eval light_gray='$FG[253]'

# right prompt
if type "virtualenv_prompt_info" > /dev/null
then
  RPROMPT='$(virtualenv_prompt_info)$light_gray [%w %D{%T}]'
else
  RPROMPT='$light_gray%n@%m'
fi

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[253]on $FG[001](branch:"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$FG[007] ✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[001])%{$reset_color%}"
