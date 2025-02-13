# export PATH="/opt/homebrew/bin:${PATH}"
export PATH="/opt/homebrew/opt/curl/bin:/opt/homebrew/bin:$PATH"

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="false"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

HIST_STAMPS='yyyy-mm-dd'
HIST_IGNORE_SPACE='true'

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
plugins=(git docker)

source $ZSH/oh-my-zsh.sh

# User configuration

# This PATH needs to be set before all other modifications:
# export PATH='/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/sbin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin'

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.

export ZPLUG_HOME=/opt/homebrew/opt/zplug
source "$HOME/.zplugrc"

source <(fzf --zsh)

# === Aliases ===

# Sorts directories in top, colors, and prints `/` at directories:
# alias ls='gls --color -h --group-directories-first -F'

# Use syntax highlight for `cat`:
# alias cat='bat --paging never --decorations never --plain'

# Copy public key to clipboard:
alias pubkey="cat ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy | echo '=> Copied to pasteboard.'"
alias cls="clear"
alias vimdiff="nvim -d"
alias dcb="docker compose build"
alias dcu="docker compose up -d"
alias dcd="docker compose down"
alias dcl="docker compose logs $1"
alias dcr='() {docker compose run --rm $1;}'

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

eval "$(uv generate-shell-completion zsh)"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/baikov/.lmstudio/bin"
