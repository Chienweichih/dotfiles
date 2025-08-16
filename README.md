# dotfiles

## Installation

Download and install these tools:

* [Alacritty][alacritty]
* [Git][git]
* [Oh My Zsh][oh-my-zsh]
* [Universal Ctags][ctags]
* [fzf][fzf]
* [ripgrep][rg]
* [delta][delta]
* [tmux][tmux]
* [coan][coan]
* [Programmer calculator][pcalc]
* [win32yank][win32yank]

## Deployment

Clone this repository:

    git clone --recurse-submodules https://github.com/Chienweichih/dotfiles.git

Using [Dotbot][dotbot] to install dotfiles, or manual execute commands that write in install.conf.yaml

## Other setting

Update Vim package

    vim -c "PackUpdateQuit"

Copy git config and modify [user], [diff], [merge]

    cp git/config ~/.config/git/config

## Git Bash

Copy bash dotfiles

    cp term/bash/bash_profile ~/.bash_profile
    cp term/bash/bashrc ~/.bashrc
    cp term/bash/minttyrc ~/.config/mintty/config

Download completion files

    cd ~/.bash_completion.d
    curl -LJO https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
    curl -LJO https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
    curl -LJO https://raw.githubusercontent.com/jonas/tig/master/contrib/tig-completion.bash

## Appendix

Install program using Autotools:

    ./configure --prefix=$HOME/.local
    make
    make install

Install program using CMake:

    cmake -DCMAKE_INSTALL_PREFIX:PATH=$HOME/.local .
    make all install

Create symlinks:

    ln -s /mnt/chromeos/MyFiles/ ~/MyFiles
    ln -s /mnt/c/Users/_name_/Desktop ~/Desktop



[alacritty]: <https://github.com/alacritty/alacritty>
[git]: <https://git-scm.com/downloads/>
[oh-my-zsh]: <https://ohmyz.sh/>
[ctags]: <https://github.com/universal-ctags/ctags>
[fzf]: <https://github.com/junegunn/fzf/releases>
[rg]: <https://github.com/BurntSushi/ripgrep/releases>
[delta]: <https://github.com/dandavison/delta/releases>
[tmux]: <https://github.com/tmux/tmux/releases>
[coan]: <https://coan2.sourceforge.net/index.php?page=install>
[pcalc]: <https://github.com/alt-romes/programmer-calculator>
[win32yank]: <https://github.com/equalsraf/win32yank/releases>
[dotbot]: <https://github.com/anishathalye/dotbot>
