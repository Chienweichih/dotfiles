Installation

    git clone https://github.com/Chienweichih/dotfiles.git

Create symlinks:

    ln -s ~/dotfiles/bashrc ~/.bashrc
    ln -s ~/dotfiles/minttyrc ~/.minttyrc
    ln -s ~/dotfiles/vimrc ~/.vimrc

# Vim #

Reference [my-vim-setting-2][vim]

# Git #

Download from [Git][git]

    cd ~
    cp dotfiles/gitconfig .gitconfig
    # Modify [user], [diff], [merge]
    # for ripgrep usage, gitignore should place at default path: ~/.config/git/ignore

    git clone https://github.com/so-fancy/diff-so-fancy.git

    curl -L -O https://raw.github.com/git/git/master/contrib/completion/git-completion.bash
    curl -L -O https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh



[vim]: <https://chienweichih.github.io/my-vim-setting-2/>
[git]: <https://git-scm.com/>
