# Reload
alias reload='. ~/.zshrc'

# Common directories
alias code="cd ~/Code"
alias desk="cd ~/Desktop"
alias docs="cd ~/Documents"
alias down="cd ~/Downloads"
alias dot="cd ~/.dotfiles"

# List Files
alias ls="gls -FlAh --color"
alias l="tree --dirsfirst --noreport -a -L 1"
alias tree="tree --dirsfirst -I node_modules"

# git
alias g="git"
alias gaa="git add --all"
alias gap="git add --patch"
alias gb="git branch"
alias gba="git branch -a"
alias gc="git commit -v"
alias gcm="git commit -m"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gcod="git checkout develop"
alias gcom="git checkout master"
alias gd="git diff"
alias gfa="git fetch --all --prune"
alias gl="git pull"
alias glu="git pull --rebase"
alias glg="git log --stat --color"
alias glog="git log --oneline --decorate --color --graph"
alias gm="git merge"
alias gp="git push"
alias gpu="git push --set-upstream"
alias gpt="git push --follow-tags"
alias grbi="git rebase --interactive"
alias grhh="git reset HEAD --hard"
alias groh="git reset origin/master --hard"
alias grv="git remote -v"
alias gsearch="git log -S"
alias gst="git status"
alias gt="git tag"
alias gta="git tag -a"

# node
alias n8="fnm use 8"
alias n10="fnm use 10"
alias n12="fnm use 12"

#npm
alias n="npm"
alias ni="npm i"
alias nis="npm i --save"
alias nisd="npm i --save-dev"
alias nr="npm run"
alias nrd="npm run dev"
alias nrt="npm run test"
alias nrtw="npm run test:watch"
