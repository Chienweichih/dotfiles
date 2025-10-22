# dotfiles

## Installation

* [Alacritty][alacritty]
* [Oh My Zsh][oh-my-zsh]
* [tmux][tmux]
* [tig][tig]
* [Universal Ctags][ctags]
* [fzf][fzf]
* [ripgrep][rg]
* [delta][delta]
* [coan][coan]
* [Programmer calculator][pcalc]
* [wl-clipboard][wl-clipboard] / [win32yank][win32yank]

## Deployment

Clone this repository:

    git clone --recurse-submodules https://github.com/Chienweichih/dotfiles.git

Using [Dotbot][dotbot] to install dotfiles, or manual execute commands that write in install.conf.yaml

## Other setting

Update Tmux plugins

> `prefix` + <kbd>I</kbd>
> - Installs new plugins from GitHub or any other git repository
> - Refreshes TMUX environment

> `prefix` + <kbd>U</kbd>
> - updates plugin(s)

> `prefix` + <kbd>alt</kbd> + <kbd>u</kbd>
> - remove/uninstall plugins not on the plugin list

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

## Create symlinks

    ln -s /mnt/c/Users/<user_name>/Desktop ~/Desktop



[alacritty]: <https://github.com/alacritty/alacritty>
[oh-my-zsh]: <https://github.com/ohmyzsh/ohmyzsh>
[tmux]: <https://github.com/tmux/tmux>
[tig]: <https://github.com/jonas/tig>
[ctags]: <https://github.com/universal-ctags/ctags>
[fzf]: <https://github.com/junegunn/fzf>
[rg]: <https://github.com/BurntSushi/ripgrep>
[delta]: <https://github.com/dandavison/delta>
[coan]: <https://coan2.sourceforge.net/index.php>
[pcalc]: <https://github.com/alt-romes/programmer-calculator>
[wl-clipboard]: <https://github.com/bugaevc/wl-clipboard>
[win32yank]: <https://github.com/equalsraf/win32yank>
[dotbot]: <https://github.com/anishathalye/dotbot>
