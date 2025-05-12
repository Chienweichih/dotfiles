# dotfiles

## Installation

Download and install these tools:

* [Git][git]
* [Oh My Zsh][oh-my-zsh]
* [Exuberant Ctags][ctags]
* [fzf][fzf]
* [ripgrep][rg]
* [coan][coan]

## Deployment

Clone this repository:

    git clone --recurse-submodules https://github.com/Chienweichih/dotfiles.git

Using [Dotbot][dotbot] to install dotfiles, or manual execute commands that write in install.conf.yaml

## Other setting

Update Vim package

    vim -c "PackUpdateQuit"

Copy git config and modify [user], [diff], [merge]

    cd ~/dotfiles
    cp git/config ~/.config/git/config
    cp git/ignore ~/.config/git/ignore

## Git Bash

Copy bash dotfiles

    cd ~/dotfiles
    cp bash/bash_profile ~/.bash_profile
    cp bash/bashrc ~/.bashrc
    cp color/minttyrc ~/.config/mintty/config

Download completion files

    cd ~/.bash_completion.d
    curl -LJO https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
    curl -LJO https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
    curl -LJO https://raw.githubusercontent.com/jonas/tig/master/contrib/tig-completion.bash

## Appendix

Install program using Autotools:

    ./configure --prefix=$HOME/usr
    make
    make install

Install program using CMake:

    cmake -DCMAKE_INSTALL_PREFIX:PATH=$HOME/usr .
    make all install

Create symlinks:

    ln -s /mnt/chromeos/MyFiles/ ~/MyFiles
    ln -s /mnt/c/Users/_name_/Desktop ~/Desktop



[git]: <https://git-scm.com/download/>
[oh-my-zsh]: <https://ohmyz.sh/>
[ctags]: <https://sourceforge.net/projects/ctags/files/>
[fzf]: <https://github.com/junegunn/fzf/releases>
[rg]: <https://github.com/BurntSushi/ripgrep/releases>
[coan]: <https://coan2.sourceforge.net/index.php?page=install>
[dotbot]: <https://github.com/anishathalye/dotbot>
