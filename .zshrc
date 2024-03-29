# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-autosuggestions)

export ZSH="/home/doomzday/.oh-my-zsh"

# startup
xset r rate 175 50

POWERLEVEL9K_MODE='awesome-fontconfig'

# Dirs
POWERLEVEL9K_DIR_HOME_BACKGROUND="clear"
POWERLEVEL9K_DIR_HOME_FOREGROUND="lightsalmon3"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="clear"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="lightsalmon3"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="clear"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="red"

# Context
POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=true
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='green'
POWERLEVEL9K_CONTEXT_TEMPLATE="%n%f@%m"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='clear'
POWERLEVEL9K_OS_ICON_BACKGROUND="clear"
POWERLEVEL9K_OS_ICON_FOREGROUND="081"

# Triple-Lined Prompt
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{014}\u256D\u2500%F{white}"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{014}\u2570%F{cyan}\uF460%F{073}\uF460%F{109}\uF460%f"

# Time
POWERLEVEL9K_TIME_FORMAT="%D{%d.%m.%y \uf073}  %@"
POWERLEVEL9K_TIME_BACKGROUND="clear"
POWERLEVEL9K_TIME_FOREGROUND="cyan"

# Battery
POWERLEVEL9K_BATTERY_STAGES=($'\u2581 ' $'\u2582 ' $'\u2583 ' $'\u2584 ' $'\u2585 ' $'\u2586 ' '\u2587 ' $'\u2588 ')
POWERLEVEL9K_BATTERY_BACKGROUND="clear"
# POWERLEVEL9K_BATTERY_ICON="\uf578"

# VCS
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="clear"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="clear"
POWERLEVEL9K_VCS_CLEAR_BACKGROUND="clear"
POWERLEVEL9K_VCS_CLOBBERED_BACKGROUND="clear"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="042"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="124"
POWERLEVEL9K_VCS_CLEAR_FOREGROUND="220"
POWERLEVEL9K_VCS_CLOBBERED_FOREGROUND="042"

# RAM
POWERLEVEL9K_RAM_BACKGROUND="clear"
POWERLEVEL9K_RAM_FOREGROUND="184"
POWERLEVEL9K_RAM_ICON="\uf9c4"

POWERLEVEL9K_DISK_USAGE_NORMAL_BACKGROUND="clear"

POWERLEVEL9K_HISTORY_BACKGROUND="clear"
POWERLEVEL9K_HISTORY_FOREGROUND="white"

POWERLEVEL9K_STATUS_OK_BACKGROUND="clear"
POWERLEVEL9K_STATUS_OK_FOREGROUND="112"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="clear"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="196"

POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='clear'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='097'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_ICON="\ufale kek"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator context history newline dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time battery ram disk_usage pyenv ime)
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR='|'

POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

source $ZSH/oh-my-zsh.sh
source /home/doomzday/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias ls=exa
alias weather=". /home/doomzday/scripts/weather.sh && get_weather"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
