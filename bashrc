# Add anaconda to path
[[ -d "/opt/conda/bin" ]] && export PATH="/opt/conda/bin:$PATH"
[[ -d "/opt/anaconda/bin" ]] && export PATH="/opt/anaconda/bin:$PATH"

# if [ $PATH
# export PATH=$PATH:~/bin
# chmod +x ~/bin/lol
#This is ME
alias gac="git add .; git commit -m"
alias dsk="cd /cygdrive/c/users/fiskh/desktop"
alias py="python3"
alias py2="python"
alias l="ls"
alias la="ls -al"
alias ref=". ~/.bashrc"
alias d="cd"
alias lsd="ls -d */"
alias version="cat /etc/*-release"
alias sra="source activate tguoenv"

alias neo="neopulse"
alias nl="neo list"
alias nv="neo visualize"
alias nt="neo train -p"
alias into="ssh -i tina-test.pem"
#This is ME
PATH=$PATH:/home/tguo/Code/addthistopath

. ~/dotfiles/temp/quirk
# Controls colors * $PS1 (prompt for shell)
. ~/dotfiles/colors
# Aliases! (wip)
. ~/dotfiles/aliases
# Neopulse completion
. ~/dotfiles/neocompletion


# Git things 
#------------------------------------------------------------------------------
gacs() {
    # git add commit solo
    git add $1
    git commit -m $2
}

# Alex coded
#------------------------------------------------------------------------------
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
#------------------------------------------------------------------------------
