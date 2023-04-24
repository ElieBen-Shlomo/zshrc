# Bash

alias cl="clear"

# Git

alias gs="git status"
alias grs="git restore --staged"
alias ga="git add"
alias gc="git checkout"
alias gst="git stash"
alias gco="git commit"
alias gbc="git branch current"
alias gd="git diff"
alias gb="git branch"
alias gl="git log"

gsq () {
  local SIZE=$1
  git reset --soft HEAD~$SIZE
}

# Bash

trash () {
  for FILE in "$@"
  do
    mv $FILE ~/.Trash
  done
}

# Shortcuts

alias ec="vim $HOME/.zshrc"
alias sc="source $HOME/.zshrc"

# Path

export PATH=$PATH:/opt/homebrew/bin
export PATH=$PATH:/usr/local/bin

# Nvm
# Note: nvm discourages installation via brew. We may have to uninstall/reinstall this later

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
source $(brew --prefix nvm)/nvm.sh

# ReactNative

export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

# Markdown viewer (rmd)
 rmd () {
  pandoc $1 | lynx -stdin
}

# Python

alias p3="python3"

# Brew

export HOMEBREW_NO_AUTO_UPDATE=1

# Docker

alias docker-clear="docker rm -f $(docker ps -a -q)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/elieben-shlomo/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/elieben-shlomo/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/elieben-shlomo/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/elieben-shlomo/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
