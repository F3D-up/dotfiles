eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
#eval "$(oh-my-posh init bash --config ~/OhMyPoshThemes/tonybaloney1.omp.json)"
eval "$(oh-my-posh init bash --config $(brew --prefix oh-my-posh)/themes/zash.omp.json)"
eval "$(zoxide init bash)"

#use automatic cd
shopt -s autocd

#load bash aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


#load bash functions
if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi

#load fzf config
if [ -f ~/.fzfrc ]; then
	source ~/.fzfrc;
fi

#local bin directory
if [ ! -d "$HOME/.local/bin" ]; then
    echo "Creating ~/.local/bin directory"
    mkdir -p "$HOME/.local/bin"
fi

#symlink for fd
if [ ! -e "$HOME/.local/bin/fd" ] && which fdfind &> /dev/null; then
        ln -s $(which fdfind) ~/.local/bin/fd;
fi

PATH=~/.console-ninja/.bin:~/.local/bin:$PATH

