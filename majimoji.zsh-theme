# Majemoji: Add emojis to the command prompt. Grand.
# Extension by @catonmat: https://github.com/catonmat
# Inspired by the Robby Russell Theme: https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/robbyrussell.zsh-theme

EMOJIS=("🦄" "🧞" "🔥" "🍎" "🌙" "🧟" "🍉" "🚗" "🐒")
NUMBER_EMOJIS=${#EMOJIS[@]}
RANDOM_EMOJI=$(( ($RANDOM % ${NUMBER_EMOJIS}) ))
if [ $RANDOM_EMOJI -eq 0 ]
then
  # array begins with index 1, but random number includes 0.
  # 0 index emoji must be set to last emoji, otherwise it will never be rendered.
  RANDOM_EMOJI=$NUMBER_EMOJIS
fi

PROMPT="%(?:%{$fg_bold[green]%}:%{$fg_bold[red]%})${EMOJIS[$RANDOM_EMOJI]} "
PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
