# dotfiles

## Installation

* [Alacritty][alacritty] [Linux]
* [Oh My Zsh][oh-my-zsh] [Linux]
* [tmux][tmux] [Linux]
* [Cascadia Code][cascadia-code] [All]
* [Windows Terminal][terminal] [Windows]
* [Double Commander][doublecmd] [Windows]
* [WinSCP][winscp] [Windows]
* [tig][tig] [All]
* [Universal Ctags][ctags] [All]
* [fzf][fzf] [All]
* [bat][bat] [All]
* [ripgrep][rg] [All]
* [delta][delta] [All]
* [coan][coan] [All]
* [Programmer calculator][pcalc] [Linux]
* [wl-clipboard][wl-clipboard] [Linux]
* [win32yank][win32yank] [Windows]
* [Meld][meld] [Linux]
* [WinMerge][winmerge] [Windows]

## Deployment

Clone this repository:

    git clone --recurse-submodules https://github.com/Chienweichih/dotfiles.git

Using [Dotbot][dotbot] to install dotfiles, or manual execute commands that write in install.conf.yaml

## Manual Configuration

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

## Windows Configuration

Download Git for Windows Portable and add to %PATH%

> [https://git-scm.com/install/windows](https://git-scm.com/install/windows)

Git config

    %USERPROFILE%\.config\git\config
    %USERPROFILE%\.config\git\ignore

Download Vim zip package and add to %PATH%

> [https://www.vim.org/download.php](https://www.vim.org/download.php)

Vim config

    %USERPROFILE%\_vimrc
    git clone https://github.com/k-takata/minpac.git %USERPROFILE%\vimfiles\pack\minpac\opt\minpac

## Miscellaneous

Create symlinks

    ln -s /mnt/c/Users/<user_name>/Desktop ~/Desktop



[alacritty]: <https://github.com/alacritty/alacritty>
[oh-my-zsh]: <https://github.com/ohmyzsh/ohmyzsh>
[tmux]: <https://github.com/tmux/tmux>
[cascadia-code]: <https://github.com/microsoft/cascadia-code>
[terminal]: <https://github.com/microsoft/terminal>
[doublecmd]: <https://github.com/doublecmd/doublecmd>
[winscp]: <https://github.com/winscp/winscp>
[tig]: <https://github.com/jonas/tig>
[ctags]: <https://github.com/universal-ctags/ctags>
[fzf]: <https://github.com/junegunn/fzf>
[bat]: <https://github.com/sharkdp/bat>
[rg]: <https://github.com/BurntSushi/ripgrep>
[delta]: <https://github.com/dandavison/delta>
[coan]: <https://coan2.sourceforge.net/index.php>
[pcalc]: <https://github.com/alt-romes/programmer-calculator>
[wl-clipboard]: <https://github.com/bugaevc/wl-clipboard>
[win32yank]: <https://github.com/equalsraf/win32yank>
[meld]: <https://gitlab.gnome.org/GNOME/meld>
[winmerge]: <https://github.com/WinMerge/winmerge>
[dotbot]: <https://github.com/anishathalye/dotbot>
