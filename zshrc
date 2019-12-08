# ----------------------------- GENERAL SETTINGS ------------------------------ #
# alias ls='ls --color=auto'
alias ls='lsd --group-dirs first'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'
alias pacman='pacman --color=always'
alias scss='scss --no-cache --quiet --sourcemap=none'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# ------------------------------- ZSH SETTINGS -------------------------------- #
# ----- options ----- #
unsetopt NO_BEEP
unsetopt NO_MATCH
setopt AUTO_CD
setopt BEEP
setopt NOMATCH
setopt NOTIFY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
setopt HIST_BEEP
setopt INTERACTIVE_COMMENTS
setopt MAGIC_EQUAL_SUBST

HISTFILE="$HOME/.zsh_history"
HIST_STAMPS=mm/dd/yyyy
DISABLE_UPDATE_PROMPT=true
HISTSIZE=5000
SAVEHIST=5000
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#ccc'
ZLE_RPROMPT_INDENT=0

# ----- keys ----- #
bindkey '^[[2~' overwrite-mode
bindkey '^[[3~' delete-char
bindkey '^[[H' beginning-of-line
bindkey '^[[1~' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[4~' end-of-line
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^[[3;5~' kill-word

# ------------------ CONFIGURING HOMEBREW COMPLETIONS IN ZSH ------------------ #

# To make Homebrew’s completions available in zsh,
# you must get the Homebrew-managed zsh site-functions
# on your FPATH before initialising zsh’s completion facility.

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# -------------------------------- POWERLEVEL --------------------------------- #
# ----- mode ----- #
POWERLEVEL9K_MODE=nerdfont-complete
# ----- Customizing Prompt Segments ----- #
#PS1="%F{red} %~ >%F{red}> %F{red}"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K=truncate_beginning
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX='%F{grey70}╭─%F{grey70}'
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='%F{grey70}╰>%f '
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator ssh user dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status ram ip vpn_ip public_ip background_jobs time)
# ----- os icon color customization ----- #
POWERLEVEL9K_OS_ICON_FOREGROUND='black'
POWERLEVEL9K_OS_ICON_BACKGROUND='grey70'
# ----- user color customization ----- #
POWERLEVEL9K_USER_DEFAULT_FOREGROUND='seagreen2'
POWERLEVEL9K_USER_DEFAULT_BACKGROUND='deepskyblue1'
POWERLEVEL9K_USER_SUDO_FOREGROUND='lightyellow'
POWERLEVEL9K_USER_SUDO_BACKGROUND='black'
POWERLEVEL9K_USER_ROOT_FOREGROUND='red1'
POWERLEVEL9K_USER_ROOT_BACKGROUND='black'
# ----- dir color customization ----- #
POWERLEVEL9K_DIR_HOME_FOREGROUND='dodgerblue2'
POWERLEVEL9K_DIR_HOME_BACKGROUND='grey70'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='cyan1'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='slateblue1'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='lightcyan'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='blue3a'
POWERLEVEL9K_DIR_ETC_FOREGROUND='dodgerblue2'
POWERLEVEL9K_DIR_ETC_BACKGROUND='yellow1'
# ----- dir symlink identification ----- #
POWERLEVEL9K_DIR_LINK_ICON="\uf838" #
POWERLEVEL9K_DIR_LINK_FOREGROUND=$POWERLEVEL9K_DIR_FOREGROUND
POWERLEVEL9K_DIR_LINK_BACKGROUND=$POWERLEVEL9K_DIR_BACKGROUND

prompt_dir_link() {
  if [ -h $(pwd) ]; then
    echo -n "$POWERLEVEL9K_DIR_LINK_ICON "
  else
    echo -n ""
  fi
}

# ----- command execution time threshold & color customization ----- #
#POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='lightcyan'
#POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='black'
#POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
# ----- public IP color customization ----- #
POWERLEVEL9K_PUBLIC_IP_FOREGROUND='black'
POWERLEVEL9K_PUBLIC_IP_BACKGROUND='cyan'
# ----- time format & color customization ----- #
POWERLEVEL9K_TIME_FOREGROUND='lightcyan'
POWERLEVEL9K_TIME_BACKGROUND='black'
POWERLEVEL9K_TIME_FORMAT=%D{%I:%M}
# ----- status customization ----- #
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL9K_STATUS_VERBOSE=false
# ----- ram color customization ----- #
POWERLEVEL9K_RAM_FOREGROUND='seagreen2'
POWERLEVEL9K_RAM_BACKGROUND='deepskyblue1'
# ----- vcs color customization ----- #
#POWERLEVEL9K_VCS_CLEAN_FOREGROUND='white'
#POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
#POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='white'
#POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='red'
#POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='white'
#POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'
#POWERLEVEL9K_VCS_UNTRACKED_ICON=●
#POWERLEVEL9K_VCS_UNSTAGED_ICON=±
#POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=↓
#POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=↑
#POWERLEVEL9K_VCS_COMMIT_ICON='+ '

#POWERLEVEL9K_HOME_ICON=''
#POWERLEVEL9K_HOME_SUB_ICON=''
#POWERLEVEL9K_FOLDER_ICON=$'\uF07C'
#POWERLEVEL9K_ETC_ICON=''

# ------------------ OHMYZSH ------------------ #
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/sammy/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME=powerlevel10k/powerlevel10k

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='codium'
else
  export EDITOR='nano'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
