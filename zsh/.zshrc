# If you come from bash you might have to change your $PATH.
export CHROME_EXECUTABLE="/var/lib/flatpak/exports/bin/com.google.Chrome"
export ANDROID_HOME="$HOME/Android/Sdk"
export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
# export JAVA_HOME="$HOME/.jdks/corretto-18.0.2"
export JAVA_HOME="/usr/lib/jvm/java-17-openjdk-amd64"
# export CPPFLAGS="-I/opt/gtk-4.12.0/include"
# export LDFLAGS="-L/opt/gtk-4.12.0/lib/x86_64-linux-gnu"
# export PKG_CONFIG_PATH="/opt/gtk-4.12.0/lib/x86_64-linux-gnu/pkgconfig"
# export LD_LIBRARY_PATH="/opt/gtk-4.12.0/lib/x86_64-linux-gnu"
# export JAVA_HOME="/usr/lib/jvm/jdk-20"
# export GTK_IM_MODULE='fcitx'
# export QT_IM_MODULE='fcitx'
# export SDL_IM_MODULE='fcitx'
# export XMODIFIERS='@im=fcitx'
export LANG=en_US.UTF-8

export PATH=$HOME/bin:$PATH
export PATH=/opt/flutter/bin:$PATH
# export PATH=/opt/node/bin:$PATH
export PATH=/opt/lampp/bin:$PATH
export PATH=$JAVA_HOME:$PATH
export PATH=$JAVA_HOME/bin:$PATH
export PATH=$ANDROID_SDK_ROOT/cmdline-tools/tools/bin:$PATH
export PATH=$ANDROID_SDK_ROOT/cmdline-tools:$PATH
export PATH=$ANDROID_SDK_ROOT/cmdline-tools/latest:$PATH
export PATH=$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$PATH
export PATH=$ANDROID_SDK_ROOT/emulator/:$PATH
export PATH=$ANDROID_SDK_ROOT/platform-tools/:$PATH
export PATH=$ANDROID_SDK_ROOT/system-images/:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/share/nvim-linux64/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/lampp/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
# export PATH="/opt/gtk-4.12.0/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="lvim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias xampp="sudo /opt/lampp/lampp"
alias vim="lvim"
alias graph="git log --decorate --oneline --graph"
alias update="sudo apt-get update"
alias upgrade="sudo apt-get upgrade"
# alias install="sudo apt-get install"
alias py="python3"
alias sqlite3="/usr/bin/sqlite3"

addtopath() {
  export PATH=$1:$PATH
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# function flutter-watch() {
#   tmux send-keys "flutter run --pid-file /tmp/flutter111.pid" Enter \;\
#   split-window -v \;\
#   send-keys 'npx -y nodemon -e dart -x "cat /tmp/flutter111.pid | xargs kill -s USR1"' Enter \;\
#   resize-pane -y 5 -t 1 \;\
#   select-pane -t 0 \;
# }

# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
export ZVM_VI_EDITOR='lvim'

# Only changing the escape key to `jk` in insert mode, we still
# keep using the default keybindings `^[` in other modes
ZVM_VI_INSERT_ESCAPE_BINDKEY=jk

eval "$(zoxide init zsh)"

# run tmux automatically on terminal startup
# if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#   exec tmux
# fi

[ -f "/home/kadafi/.ghcup/env" ] && . "/home/kadafi/.ghcup/env" # ghcup-env

co() { g++ -std=c++20 -O2 -o "${1%.*}" $1 -Wall -Winvalid-pch; }
run() { co $1 && ./${1%.*} & fg; }

# pnpm
export PNPM_HOME="/home/kadafi/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
