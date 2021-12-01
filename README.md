# Download #

Windows:

* [Git][git]
* [Exuberant Ctags][ctags]
* [fzf][fzf]
* [ripgrep][rg]

Linux:

use apt install, or build from source

# Install #

    git clone https://github.com/Chienweichih/dotfiles.git

Create symlinks:

    ln -s ~/dotfiles/vimrc ~/.vimrc
    ln -s ~/dotfiles/bashrc ~/.bashrc

For Windows Git Bash:

    ln -s ~/dotfiles/minttyrc ~/.minttyrc

to create the symbolic links, run Git Bash as an administrator and run:

    export MSYS=winsymlinks:nativestrict

# Git #

Go home and copy gitconfig:

    cd
    cp dotfiles/gitconfig .gitconfig

Modify [user], [diff], [merge]

for ripgrep usage, gitignore should place at default path:

    ~/.config/git/ignore

Download some plugins:

    git clone https://github.com/so-fancy/diff-so-fancy.git

    mkdir .bash_completion.d
    cd .bash_completion.d
    curl -L -O https://raw.github.com/git/git/master/contrib/completion/git-completion.bash
    curl -L -O https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh
    curl -L -O https://raw.github.com/jonas/tig/master/contrib/tig-completion.bash

# Vim #

minpac:

    mkdir -p ~/.vim/pack/minpac/opt
    cd ~/.vim/pack/minpac/opt
    git clone https://github.com/k-takata/minpac.git

open vim, install plugins:

    :PackUpdate

[Windows need to set Environment Variables for fzf][fzf-wiki]:

    FZF_DEFAULT_COMMAND

# Appendix #

Install program using Autotools:

    ./configure --prefix=$HOME/usr
    make
    make install

Install program using CMake:

    cmake -DCMAKE_INSTALL_PREFIX:PATH=$HOME/usr .
    make all install



[git]: <https://git-scm.com/download/>
[ctags]: <https://sourceforge.net/projects/ctags/files/>
[fzf]: <https://github.com/junegunn/fzf/releases>
[rg]: <https://github.com/BurntSushi/ripgrep/releases>
[fzf-wiki]: <https://github.com/junegunn/fzf/wiki/Windows>
