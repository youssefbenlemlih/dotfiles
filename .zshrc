# zsh settings
ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  git-flow-completion
  zsh-autosuggestions
  zsh-syntax-highlighting
  vi-mode
)

# init oh-my-zsh
[ -d $HOME/.oh-my-zsh ]&& export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh


# git aliases
alias gco.="gco ."
alias gcom="gco master"
alias gpu='git push -u origin HEAD'
alias gxo='git checkout'
alias gbm='git branch -m'

# tig aliases
alias td='tig status'
alias tiga='tig --all'
alias tst='tig status'

# vim aliases
export EDITOR='nvim'
alias v=nvim
alias vd='v $(git diff --name-only)'
alias vim=nvim
alias vrc='vim ~/.vimrc'
alias vzsh='vim ~/.zshrc'

# other aliases
alias i="idea ."
alias md='mkdir'
alias npmi='npm i'
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# init nvm
export NVM_DIR="$HOME/.nvm"
export PATH="$PATH:$HOME/.nvm/current/bin/node"
export NVM_SYMLINK_CURRENT=true
initnvm(){
	[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && \. "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm
	# uncomment for nvm auto completion
 	# [ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
}
initnvm

# homebre settings
export HOMEBREW_NO_ANALYTICS=1              # disables the homebrew analytics tool
export HOMEBREW_CASK_OPTS=--require-sha
export HOMEBREW_NO_INSECURE_REDIRECT=1
