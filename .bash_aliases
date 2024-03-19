#COMMANDS
alias back='cd -'
alias c='clear'
alias sudo='sudo '
alias please='sudo "$BASH" -c "$(history -p !!)"'
alias hs='history | grep'
alias dog='shred'
alias remember='apropos'
alias code='nohup code.exe --remote wsl+Ubuntu "$(pwd)" &'
alias subl='subl.exe '
alias rhere='ranger .'
alias ehere='explorer.exe .'
alias saferun='systemd-inhibit '
alias fixtime='sudo hwclock -s'
alias bat='batcat '
alias top='btop'

#TMUX
alias tmuxsesh="tmux new -s "
alias tmuxkill="tmux kill-session -t "
alias tmuxpurge="tmux kill-server "

#DIR MANAGMENT
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias cdir='cd /mnt/c'
alias faksdir='cd /mnt/c/faks/'
alias gitdir='cd /mnt/c/git'

#BASIC FLAGS
alias cp='cp -i'
alias df='df -h'
alias free='free -m'
alias mkdirp='mkdir -pv'

#LS TO EXA
alias ls='exa --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lla='exa -la --color=always --group-directories-first'  # all files flong format
alias lt='exa -T --color=always --group-directories-first' # tree listing
alias lta='exa -aT --color=always --group-directories-first' #tree listing all files
alias l.='exa -a | egrep "^\."'

#FAST APT
alias aptuu='sudo apt update && sudo apt upgrade'
alias aptinst='sudo apt install -y'
alias aptupdate='sudo apt update'
alias aptupgrade='sudo apt upgrade'
alias aptfull='sudo apt full-upgrade'

# GREP COLOR
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# PS
alias psa="ps auxf"
alias psgrep='ps aux | grep -v grep | grep -i -e VSZ -e'
alias psmem='ps auxf | sort -nr -k 4'
alias cputemp='sensors | grep Core'
#alias config='/usr/bin/git --git-dir=/home/jetnova/dotfiles --work-tree=/home/jetnova'

# COMPILERS
alias gpp="g++ "
alias gpp20="g++ -std=c++20 "
alias gpp20debug="g++ -std=c++20 -D_GLIBCXX_DEBUG "
alias gccver="sudo update-alternatives --config gcc"
