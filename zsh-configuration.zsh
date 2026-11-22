####################
# General settings #
####################
export XDG_CONFIG_HOME="$HOME/.config"
HISTFILE="${HISTFILE:-$HOME/.zsh_history}"
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS

################
# Autocomplete #
################
autoload -Uz compinit
compinit

#######################
# Application configs #
#######################

# FZF
source <(fzf --zsh)

# Skip Mac folders to avoid full disk access prompts.
export FZF_DEFAULT_OPTS="--walker-skip .git,node_modules,target,build,Library"

###############
# Zsh plugins #
###############
brew_prefix="$(brew --prefix)"
source "$brew_prefix/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$brew_prefix/share/zsh-prompt/zsh-prompt.zsh"
source "$brew_prefix/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
