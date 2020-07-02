Installation

    git clone https://github.com/Chienweichih/dotfiles.git
    git clone https://github.com/so-fancy/diff-so-fancy.git

Create symlinks:

    ln -s ~/dotfiles/bashrc ~/.bashrc
    ln -s ~/dotfiles/inputrc ~/.inputrc
    ln -s ~/dotfiles/minttyrc ~/.minttyrc
    ln -s ~/dotfiles/tigrc ~/.tigrc
    ln -s ~/dotfiles/vimrc ~/.vimrc

# Vim #

Reference [my-vim-setting][vim]

20200701 update:

Managing Plugins with minpac

    mkdir -p ~/.vim/pack/minpac/opt
    cd ~/.vim/pack/minpac/opt
    git clone https://github.com/k-takata/minpac.git

    :PackUpdate

Installing fzf

    ~/.vim/pack/minpac/start/fzf/install --bin

    (there's an issue on cygwin, need to modify line 587 ($TERM !=# 'xterm'))

Installing ripgrep: [BurntSushi/ripgrep][rg]

# Git #

Download from [Git][git]

    Modify   .gitconfig
    Link     .minttyrc
    Link     .tigrc



[rg]:  <https://github.com/BurntSushi/ripgrep#installation>
[vim]: <https://chienweichih.github.io/my-vim-setting/>
[git]: <https://git-scm.com/>
