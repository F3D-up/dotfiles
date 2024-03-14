#create a directory and move into it
mkcd () { mkdir -v $1; cd $1; }

#dotfiles bare repo upload
dotadd () {
 /usr/bin/git --git-dir=/home/$USER/dotfiles --work-tree=/home/$USER add $1;
}

dotcommit () {
 /usr/bin/git --git-dir=/home/$USER/dotfiles --work-tree=/home/$USER commit -m "$1";
 
}

dotpush () {
  /usr/bin/git --git-dir=/home/$USER/dotfiles --work-tree=/home/$USER push origin master;
}

dotgit () {
  /usr/bin/git --git-dir=/home/$USER/dotfiles --work-tree=/home/$USER $@;

}

#create a directory and all parent directories and move into it
mkpcd () { mkdir -pv $1; cd $1; }

#search in files in curr directory
function search (){
 egrep -nroiI $1 . | sort | uniq
}

#find file in pwd
function whereis (){
  find . -name "$1*";
}

#open fzf file in chosen editor
fzfinto () { $1 $(fzf); }

#nano the fzf result
fzfnano () { nano $(fzf); }

#cheatsheet with the use of cheat.sh
cheat () { curl cheat.sh/$1; }

#get random nu ber in a given range
roll() {
  if [ $# -ne 2 ]; then
    echo "Usage: roll <min> <max>"
  fi

  local min=$1
  local max=$2

  if ! [[ "$min" =~ ^[0-9]+$ ]] || ! [[ "$max" =~ ^[0-9]+$ ]]; then
    echo "Both min and max must be positive integers."
    return 1
  fi

  if [ "$min" -ge "$max" ]; then
    echo "Min cannot be lesser than max."
    return 1
  fi

  local random_num=$((RANDOM % (max - min +1) + min))

  echo "Rolled: $random_num"
}

#create a backup file
backup() {
    cp "$1"{,.bak}
}

#cd and ls
cdl() {
    cd "$1" && ls
}

#colorise JSON output
json() {
    if [ -p /dev/stdin ]; then
        # If receiving input from a pipe
        cat - | jq .
    else
        # If no input from pipe, use the first argument as file
        jq . "$1"
    fi
}
