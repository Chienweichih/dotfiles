Installation

    git clone --recursive https://github.com/Chienweichih/dotfiles.git

or use this command if you clone without --recursive:

    git submodule update --init --recursive

Create symlinks:

    ln -s ~/dotfiles/bashrc ~/.bashrc
    ln -s ~/dotfiles/inputrc ~/.inputrc
    ln -s ~/dotfiles/minttyrc ~/.minttyrc
    ln -s ~/dotfiles/tigrc ~/.tigrc
    ln -s ~/dotfiles/diff-so-fancy ~/diff-so-fancy
    ln -s ~/dotfiles/vim ~/.vim

Generate helptags for plugins (in Vim)

    :helptags ALL

# Vim #

Reference [my-vim-setting][vim]

# Git #

Download from [Git][git]

    Modify   .gitconfig
    Link     .minttyrc
    Link     .tigrc
    Link     diff-so-fancy




[vim]: <https://chienweichih.github.io/my-vim-setting/>
[git]: <https://git-scm.com/>
