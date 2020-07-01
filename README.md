Installation

    git clone https://github.com/Chienweichih/dotfiles.git
    git clone https://github.com/so-fancy/diff-so-fancy.git

Create symlinks:

    ln -s ~/dotfiles/bashrc ~/.bashrc
    ln -s ~/dotfiles/inputrc ~/.inputrc
    ln -s ~/dotfiles/minttyrc ~/.minttyrc
    ln -s ~/dotfiles/tigrc ~/.tigrc
    ln -s ~/dotfiles/vim ~/.vim

# Vim #

Reference [my-vim-setting][vim]

20200701 update:

Managing Plugins with minpac

    mkdir -p ~/dotfiles/vim/pack/minpac/opt
    cd ~/dotfiles/vim/pack/minpac/opt
    git clone https://github.com/k-takata/minpac.git

    :PackUpdate

# Git #

Download from [Git][git]

    Modify   .gitconfig
    Link     .minttyrc
    Link     .tigrc



[vim]: <https://chienweichih.github.io/my-vim-setting/>
[git]: <https://git-scm.com/>
