# Some git shortcuts
alias gs='git status'
alias gr='cd $(git rev-parse --show-toplevel)' # Go back to git root
alias gl='git log'
alias gll="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold red)%an%C(reset) %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)'"
alias ga='git add -A'
alias gc='git commit'
alias gp='git push'
alias gb='git branch'
alias gf='git fetch'
alias gd='git diff'
alias gdd='git difftool --tool=vimdiff2'
alias gac='ga && gc'
alias gacm='ga && gcm'
alias gcm='gc -m'
alias gpp='git pull'
alias gcc='git checkout'
alias gcb='git checkout -b'
alias gbd='git branch -D'
alias gcan='gc --amend --no-edit'
alias gri='git rebase -i'
alias grim='git rebase -i origin/master'
alias grr='git rebase -i $(git merge-base HEAD origin/master)'
alias grc='git rebase --continue'
alias gra='git rebase --abort'
alias gru='git reset --hard @{u}'


function gdone() {
    echo "Good work! Running done pipeline..."
    echo "Here is the current status:"
    gs
    echo "Adding all changes..."
    ga
    echo "Here is what the status look like after added changes..."
    gs
    echo "Committing changes..."
    if [ -n "$1" ]
    then
        gc -m "$1"
    else
        gc
    fi
    echo "Pushing commit..."
    gp
    echo "Jobs done, happy coding!"
}

# General shortcuts
alias ll='ls -la'
alias less='view'
alias ..='cd ..'

# Cursed
alias sz='source ~/.zshrc'
alias vz='vim ~/.zshrc'

# Kill processes on port
function kp() {
    echo "Killing processes on port"
    echo "$(lsof -i:$1)"
    kill $(lsof -t -i:$1)
}

