# dotfiles

## Installation

Download and install these tools:

* [Git][git]
* [Oh My Zsh][oh-my-zsh]
* [Exuberant Ctags][ctags]
* [fzf][fzf]
* [ripgrep][rg]

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
[oh-my-zsh]: <https://ohmyz.sh/>
[ctags]: <https://sourceforge.net/projects/ctags/files/>
[fzf]: <https://github.com/junegunn/fzf/releases>
[rg]: <https://github.com/BurntSushi/ripgrep/releases>
[dotbot]: <https://github.com/anishathalye/dotbot>
