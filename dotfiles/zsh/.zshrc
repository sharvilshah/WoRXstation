# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# path to the zsh custom folder
export ZSH_CUSTOM=$HOME/WoRXstation/dotfiles/zsh/custom

# path to the "private-config" folder
PRIVATE_CONFIG=$HOME/WoRXstation/private-configs

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="sbs"


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Automatically update
DISABLE_UPDATE_PROMPT="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# make sure history-substring-search is last and zsh-syntax-highlighting is second last
plugins=(git osx encode64 colored-man jira zsh-syntax-highlighting history-substring-search)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/opt/ruby/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:$PATH

# Source all *.zsh files in PRIVATE_CONFIG
for config_file ($PRIVATE_CONFIG/*.zsh(N)); do
	source $config_file
done
unset config_file
unset PRIVATE_CONFIG
