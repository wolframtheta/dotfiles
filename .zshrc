# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/wolfram/ohmyzsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
export NVM_SOURCE="/usr/share/nvm"
[ -s "$NVM_SOURCE/nvm.sh" ] && \. "$NVM_SOURCE/nvm.sh"  # This loads nvm
[ -s "$NVM_SOURCE/bash_completion" ] && \. "$NVM_SOURCE/bash_completion"  # This loads nvm bash_completion

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
alias gochrome='google-chrome-stable --disable-web-security --user-data-dir="/home/wolfram/chrome"'
alias cors='npm start --prefix /home/wolfram/Programs/cors-anywhere/'
export PATH="$HOME/.local/lib/python3.8/site-packages/:$PATH"
function compileAPK() {
	if [ "$#" -lt 4 ]; then
    		echo "Missing some arguments. Remember: compileAPK <path to keystore> <path to folder app> <alias name> <path and name apk exported>"
	else
		jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore $1 $2/platforms/android/app/build/outputs/apk/release/app-release-unsigned.apk $3
		zipalign -v 4 $2/platforms/android/app/build/outputs/apk/release/app-release-unsigned.apk $4.apk
fi

}

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PATH=~/.mongodb/versions/mongodb-current/bin:$PATH

alias pip36="$HOME/.pyenv/versions/3.6.0/bin/pip"
alias python36="$HOME/.pyenv/versions/3.6.0/bin/python"
alias zshrc-edit="vim $HOME/.zshrc"
alias zshrc-reload="source $HOME/.zshrc"
alias ionic-capacitor-run="ionic build && npx cap sync"
alias ll="ls -lha"
alias mongorun="mongod --directoryperdb --dbpath $HOME/Dev/mongoDBs"
alias robo3t="$HOME/Programs/robo3t/bin/robo3t &"
alias vpn-connect="f5fpc -s -t https://upclink.upc.edu -u x.marques -p 'Aobcd8663'"
alias vpn-info="f5fpc --info"
alias nomachine="/usr/NX/bin/nxplayer &"
function boost() {
	sudo isw -b $1
}
alias temp="sudo isw -r 16R3EMS1"


