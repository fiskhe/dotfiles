
# Git aliases.
#------------------------------------------------------------------------------
# Git aliases.
#------------------------------------------------------------------------------

#This is ME
alias gac="git add .; git commit -m"
alias dsk="cd /cygdrive/c/users/fiskh/desktop"
alias py="python3"
alias py2="python"
alias la="ls -al"
alias ref=". ~/.bashrc"
alias d="cd"
#This is ME

alias gclone="git clone"
alias gls="git ls-files"
alias gsh="git show"
alias gr="git pull --rebase"
alias gpatch="git format-patch -n HEAD^"
alias uncommit="git reset --soft HEAD^"
alias dumbcommit="git add -u ./*; git commit -m tmp"
alias lastcommit="git rev-parse HEAD"
alias lc="git rev-parse HEAD"
alias gdiff="git diff --staged"
alias unmerged="git diff --name-only --diff-filter=U"
alias unadd="git diff --name-only"
alias tocom="git diff --staged --name-only"
alias gs="git status"
alias gd="git diff"
alias gp="git push"
alias gon="git rebase --continue"
alias gau="git add -u"
alias ga="git add"
alias xga="xargs git add"
alias xag="xargs git add"
alias gc="LC_ALL=''; git commit"
alias gh="git checkout"
alias gb="git branch"
alias gl="git log --pretty=fuller"
alias gcp="git cherry-pick"
alias gap="git apply"
alias gs.="git status ."
ggo() {
  git grep $@ -- "*.go"
}

gtxt() {
  git grep $@ -- "*.txt"
}

gadd() {
  if [[ $1 ]]; then
    git add $1
  else
    git add -u
  fi
  git commit --amend --no-edit
}

gauthor() {
  author=$1
  shift
  git log --pretty=fuller --author=$author $@
}

gfiles() {
  git show --pretty="format:" --name-only $@
}
alias gf="gfiles"

mcount() {
  author=$1
  month=$2
  gauthor $author |
  /bin/grep "^Date:\|^CommitDate:" |
  /bin/grep 2017 |
  /bin/grep $month |
  wc -l
}

# git grep aliases, as historical reference.
alias gren="LC_ALL=C; git grep --color -n"
alias gw="gren -w"
alias fren="gren -F30"
alias fw="fren -w"

# ls aliases.
alias ls="ls --color"

# Vim aliases.
alias v="vim"

# Cygwin 
alias open="cygstart.exe"

# Common location aliases.
