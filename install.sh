

# copy the 

files=(
    bashrc 
    conkyrc 
    gitconfig 
    tmux.conf 
    vimrc 
    zshrc
)

for dotfile in $files
do
    if [ -h "~/.$dotfile" ] 
    then 
        echo "$dotfile already exists"
    else 
        ln -s "/home/adam/.dotfiles/$dotfile" "/home/adam/.$dotfile"
    fi
done

