# INFO: LINE 1 to 77 are  zsh only. the rest can be used in a bashrc
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export TERM="xterm-256color"
# Path to your oh-my-zsh installation.
export ZSH=/Users/jeremie/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_COLOR_SCHEME='dark' # light/dark
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  osx
  python
  iterm2
  npm
  cp
  thefuck
  brew
  aws
  colorize
  emoji
  man
  node
  pep8
  vim-interaction
  yarn
  colored-man-pages
  zsh-syntax-highlighting
  zsh-apple-touchbar
  k
)


source $ZSH/oh-my-zsh.sh

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
# export PATH="/Users/jeremie/anaconda3/bin:$PATH"  # commented out by conda initialize
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
# . "/anaconda3/etc/profile.d/conda.sh"  # commented out by conda initialize
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<


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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
## CLI nice features
eval $(thefuck --alias)

### apps
export DELIVER_USERNAME="talsum@me.com"
export DELIVER_PASSWORD="JEREM1//kal"
export FASTLANE_PASSWORD="JEREM1//kal"

alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
alias scurl='/usr/local/opt/curl-openssl/bin/curl'
alias awsconnect='ssh -L 8157:127.0.0.1:8888 -R 52698:localhost:52698 -i "~/Documents/Projects/amzkey/AWS-2.pem"'
alias pylearn='conda activate tensorflow1'
alias pylearn3='conda activate py36'
alias sage='cd /Applications/SageMath; ./sage'
alias picard='java -jar ~/picard.jar'
alias lnode8='brew unlink node; brew link --force --overwrite node@8'
alias lnode='brew unlink node@8; brew link node';
alias ytdl='youtube-dl -no-overwrite -i --write-thumbnail --yes-playlist --output "%(title)s.%(ext)s" --extract-audio --audio-quality 0 --audio-format "mp3"'
alias getimages='for i in *.jpg; do eyeD3 --add-image $i:FRONT_COVER ${i%.jpg}.mp3; done'
alias e="emacsclient -t -a ''"
alias eb="emacsbare"
alias ec="emacsclient -c -n -a ''"
alias emacsbare="emacs -nw -Q --eval \"(load-theme 'misterioso)\""
alias vi="e"
alias start="emacs --daemon;keylogger ~/logfile.txt"
alias pngextract="~/PNGExtract/pngextract"
alias whichenv="conda info --envs"
alias broadconnect='ssh -L 8157:127.0.0.1:8888 -R 52698:localhost:52698 jkalfon@gmb5d-34a.broadinstitute.org'
## terra config with cromwell and wdl
alias terra="java -Dconfig.file=~/cromwell/google.conf -jar ~/cromwell/cromwell-40.jar"
alias terracheck="java -jar ~/cromwell/wdltool.jar validate"
alias terrainput="java -jar ~/cromwell/wdltool.jar inputs"
alias terratest="java -jar ~/cromwell/cromwell-40.jar server"
alias gcpstart=" gcloud compute instances start"
alias expo='expo-cli'

## AWESOME LIST###################################

alias sl="ls"
alias lsl="ls -lhFA | less"
alias cd..="cd .."
alias ..="cd .."
alias fhere="find . -name "
alias du="du -ach | sort -h"
alias mkdir="mkdir -pv"
alias wget="wget -c"
alias chx='chmod 755'
alias chr='chmod 644'
alias untarz='tar -xzf'
alias untarj='tar -xjf'
alias open="xdg-open"
alias pyup="python setup.py sdist bdist_wheel && twine upload dist/*"
alias s="git status"
alias df='df -h'
alias ngrock='/usr/local/bin/ngrock'

alias wifikey="sudo grep -r '^psk=' /etc/NetworkManager/system-connections/"
# Usage (requires sudo)
# wifikey

alias cap="adb shell screencap -p /sdcard/screen.png && \
           adb pull /sdcard/screen.png && \
           adb shell rm /sdcard/screen.png"
# Usage (requires connected device)
# Saves the screenshot with name screen.png
# cap

##
# Your previous /Users/jeremie/.bash_profile file was backed up as /Users/jeremie/.bash_profile.macports-saved_2018-02-14_at_18:15:09
##
#
#
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

#
#
#PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
# added by Anaconda2 4.2.0 installer
#removed the hashtag to try (put back if any pb
#export PATH="~/anaconda2/bin:$PATH"
#export PATH=/Applications/NEURON-7.4/nrn/x86_64/bin:$PATH #added by NEURON installer
#export PYTHONPATH=/Applications/NEURON-7.4/nrn/lib/python #added by NEURON installer
#export PYTHONHOME="//anaconda" #added by NEURON installer
#export PYTHONPATH=/usr/local/lib/
#2.7/site-packages #path for nest trial
#export LD_LIBRARY_PATH="//anaconda/lib:$LD_LIBRARY_PATH" #added by NEURON installer
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home"
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH=$JAVA_HOME/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
export PATH=/Users/Jeremie/Documents/logiciels/apache-maven-3.5.0/bin:$PATH
# added by Anaconda2 4.3.1 installer
export PATH="/usr/local/opt/berkeley-db@4/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/qt/bin:$PATH"
# other means
export PATH="/usr/local/bin/:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/Users/jeremie/Documents/logiciels/google-cloud-sdk/bin:$PATH"
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="/usr/local/opt/apr-util/bin:$PATH"
# emergent 6.3.2
export PATH=/Users/jeremie/.bin/emergent6.3.2:/Users/jeremie/.bin/emergent6.3.2:/usr/local/opt/apr-util/bin:/usr/local/opt/gettext/bin:/Users/jeremie/Documents/logiciels/google-cloud-sdk/bin:/usr/local/opt/sqlite/bin:/usr/local/bin/:/usr/local/opt/qt/bin:/usr/local/opt/openssl@1.1/bin:/usr/local/opt/berkeley-db@4/bin:/Users/jeremie/anaconda2/bin:/Users/Jeremie/Documents/logiciels/apache-maven-3.5.0/bin:/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/texbin:/usr/local/go/bin:/opt/X11/bin
alias emergent="cd /Users/jeremie/.bin/emergent6.3.2; ./emergent"
# emergent 6.3.2
export PATH=/Users/jeremie/.bin/emergent6.3.2:/Users/jeremie/.bin/emergent6.3.2:/Users/jeremie/.bin/emergent6.3.2:/usr/local/opt/apr-util/bin:/usr/local/opt/gettext/bin:/Users/jeremie/Documents/logiciels/google-cloud-sdk/bin:/usr/local/opt/sqlite/bin:/usr/local/bin/:/usr/local/opt/qt/bin:/usr/local/opt/openssl@1.1/bin:/usr/local/opt/berkeley-db@4/bin:/Users/jeremie/anaconda2/bin:/Users/Jeremie/Documents/logiciels/apache-maven-3.5.0/bin:/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/texbin:/usr/local/go/bin:/opt/X11/bin
alias emergent="cd /Users/jeremie/.bin/emergent6.3.2; ./emergent"
# emergent 6.3.2
export PATH=/Users/jeremie/.bin/emergent6.3.2:/Users/jeremie/.bin/emergent6.3.2:/Users/jeremie/.bin/emergent6.3.2:/usr/local/opt/apr-util/bin:/usr/local/opt/gettext/bin:/Users/jeremie/Documents/logiciels/google-cloud-sdk/bin:/usr/local/opt/sqlite/bin:/usr/local/bin/:/usr/local/opt/qt/bin:/usr/local/opt/openssl@1.1/bin:/usr/local/opt/berkeley-db@4/bin:/Users/jeremie/anaconda2/bin:/Users/Jeremie/Documents/logiciels/apache-maven-3.5.0/bin:/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/texbin:/usr/local/go/bin:/opt/X11/bin
alias emergent="cd /Users/jeremie/.bin/emergent6.3.2; ./emergent"
# meme
export PATH=$HOME/meme/bin:$PATH

export PERL5LIB=/path/to/your/vcftools-directory/src/perl/
### TeX
export PATH="//Library/TeX/Root/bin/x86_64-darwin/:$PATH"
### gsutil
export PATH=${PATH}:$HOME/gsutil

### fastlane
export PATH="$HOME/.fastlane/bin:$PATH"

# MacPorts Installer addition on 2018-02-14_at_18:15:09: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/opt/jpeg-turbo/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/qt/bin:$PATH"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export PATH="/usr/local/opt/node@8/bin:$PATH"
export ANDROID_HOME=/usr/local/opt/android-sdk
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
export MPLBACKEND="module://itermplot"
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

export PATH="/home/gejun/anaconda3/bin:$PATH"

zplug "greymd/tmux-xpanes"export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jeremie/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jeremie/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jeremie/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jeremie/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi


source ~/Documents/Projects/BroadInstitute/mybash/my_custom_commands.sh
export PATH="/usr/local/opt/ruby/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jeremie/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jeremie/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jeremie/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jeremie/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="/usr/local/opt/curl/bin:$PATH"
export GCS_OAUTH_TOKEN=`gcloud auth application-default print-access-token`
pylearn3
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR='/usr/local/share/zsh-syntax-highlighting/highlighters'
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export XML_CATALOG_FILES=/usr/local/etc/xml/catalog
export PATH="/usr/local/opt/openjdk/bin:$PATH"
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
export PATH="/usr/local/sbin:$PATH"
