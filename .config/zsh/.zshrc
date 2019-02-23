# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
#
# Path to your oh-my-zsh installation.
export ZSH=~/.config/zsh/.oh-my-zsh
ZSH_DISABLE_COMPFIX=true
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="amuse"
#ZSH_THEME="powerlevel9k/powerlevel9k"
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vi_mode status root_indicator background_jobs history time)
# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="false"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=1

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  jsontools
  vi-mode
  web-search
  urltools
  iterm2
  emoji-clock
  brew
  gradle
  rsync
  zsh-navigation-tools
)

source $ZSH/oh-my-zsh.sh

# User configuration
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export CPPFLAGS="-I/usr/local/opt/readline/include"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export LDFLAGS="-L/usr/local/opt/readline/lib"
export MANPATH="/usr/local/man:$MANPATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"
export PKG_CONFIG_PATH="/usr/local/opt/readline/lib/pkgconfig"
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR="/usr/local/share/zsh-syntax-highlighting/highlighters"

export SDKMAN_DIR="/Users/$(whoami)/.sdkman"

#export HTTP_PROXY="localhost:8889"
#export HTTPS_PROXY="localhost:8889"
#export http_proxy="localhost:8889"
#export https_proxy="localhost:8889"
# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
fi

export KEYTIMEOUT=1
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
#export LDFLAGS="-L/usr/local/opt/openblas/lib"
#export CPPFLAGS="-I/usr/local/opt/openblas/include"
#export PKG_CONFIG_PATH="/usr/local/opt/openblas/lib/pkgconfig"
# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

bindkey -v
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias vi="nvim"
alias vim="nvim"

alias gpull="find ~/ -type d -name '.git' -execdir git pull +"
[[ -s "/Users/$(whoami)/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/$(whoami)/.sdkman/bin/sdkman-init.sh"
alias ll="gls -lash --color=always"
alias ls="gls --color=always"
alias l='gls --color=always -lFh'     #size,show type,human readable
alias la='gls --color=always -lAFh'   #long list,show almost all,show type,human readable
alias lr='gls --color=always -tRFh'   #sorted by date,recursive,show type,human readable
alias lt='gls --color=always -ltFh'   #long list,sorted by date,show type,human readable
alias ldot='gls --color=always -ld .*'
alias lS='gls --color=always -1FSsh'
alias lart='gls --color=always -1Fcart'
alias lrt='gls --color=always -1Fcrt'
alias prettyJson='python -m json.tool'

autoload -U compinit
compinit -u

test -e "/Users/$(whoami)/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/gitlabAliases.zsh
source ~/.config/zsh/rancherAliases.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
