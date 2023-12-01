# Common directories
alias code "cd ~/Code"
alias desk "cd ~/Desktop"
alias docs "cd ~/Documents"
alias down "cd ~/Downloads"
alias dot "cd ~/.dotfiles"

# Actions
alias notes "cd ~/Documents && e ~/Documents/notes.md"

# List Files
alias l "tree --dirsfirst --noreport -a -L 1"
alias tree "tree --dirsfirst -I node_modules"

# Open
alias o "open"

# man
alias man "viman"

# git
alias g "git"
alias gaa "git add --all"
alias gap "git add --patch"
alias gb "git branch"
alias gba "git branch -a"
alias gc "git commit -v"
alias gcm "git commit -m"
alias gco "git checkout"
alias gcob "git checkout -b"
alias gcod "git checkout develop"
alias gcom "git checkout main"
alias gd "git diff"
alias gdi "git diff --no-index"
alias gds "git diff --stat=80"
alias gfa "git fetch --all --prune"
alias gl "git pull"
alias glu "git pull --rebase"
alias glg "git log --stat --color --graph"
alias glog "git log --oneline --decorate --color --graph"
alias glogp "git log --patch-with-stat"
alias gm "git merge"
alias gp "git push"
alias gpu "git push --set-upstream"
alias gpt "git push --follow-tags"
alias grbi "git rebase --interactive"
alias grhh "git reset HEAD --hard"
alias groh "git reset origin/main --hard"
alias grv "git remote -v"
alias gsearch "git log -S"
alias gst "git status"
alias gsts "git status -s"
alias gt "git tag -l --sort=v:refname 'v*'"
alias gta "git tag -a"
alias gts "git tag -s"

# npm
alias n "npm"
alias ni "npm i"
alias nig "npm i --global"
alias nis "npm i --save"
alias nisd "npm i --save-dev"
alias nls "npm ls"
alias nr "npm run"
alias nrd "npm run dev"
alias nrs "npm run start"
alias nrt "npm run test"
alias nrtw "npm run test:watch"
alias fu "fnm use"

# rg
alias rgf "rg --files | rg"
alias rgv "rg version package.json"

# delta
alias deltaSideBySideOn "git config --global delta.side-by-side true"
alias deltaSideBySideOff "git config --global delta.side-by-side false"

# Taskbook/Taskline
alias tc "t c" # check
alias td "t d" # delete
alias te "t e" # edit
alias tf "t f" # find
alias th "t --help"
alias ti "t i" # timeline
alias tl "t l" # list
alias tm "t m" # move
alias ts "t s" # star
alias tt "t t" # create task

# python
alias python "/usr/local/bin/python3"

# vscode
alias vscode "/opt/homebrew/bin/code"
