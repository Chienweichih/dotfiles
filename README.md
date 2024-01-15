# dotfiles

## Installation

Download and install these tools:

* [Git][git]
* [Exuberant Ctags][ctags]
* [fzf][fzf]
* [ripgrep][rg]

## _For Windows only:_

to create the symbolic links, run this command in Git Bash as an administrator:

    export MSYS=winsymlinks:nativestrict

[to set Environment Variables for fzf][fzf-wiki]:

    FZF_DEFAULT_COMMAND

[Git Bash issue][fzf-issue]:

    Modify fzf.vim: from "cmd.exe /C" to "cmd.exe //C"

## Deployment

Clone this repository:

    git clone https://github.com/Chienweichih/dotfiles.git

Using [Dotbot][dotbot] to install dotfiles, or manual execute commands that write in install.conf.yaml

## Other setting

Update Vim package

    vim -c "PackUpdateQuit"

Copy gitconfig to $HOME, and modify [user], [diff], [merge]

    cp dotfiles/gitconfig ~/.gitconfig

For ripgrep usage, gitignore should place at default path:

    ~/.config/git/ignore

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



[git]: <https://git-scm.com/download/>
[ctags]: <https://sourceforge.net/projects/ctags/files/>
[fzf]: <https://github.com/junegunn/fzf/releases>
[rg]: <https://github.com/BurntSushi/ripgrep/releases>
[fzf-wiki]: <https://github.com/junegunn/fzf/wiki/Windows>
[fzf-issue]: <https://github.com/junegunn/fzf/issues/1983>
[dotbot]: <https://github.com/anishathalye/dotbot>
