# dotfiles

My personal dotfiles for Linux and Windows, managed with [Dotbot][dotbot].

## Tools & Applications

### Linux

| Tool | Description |
|---|---|
| [Alacritty][alacritty] | GPU-accelerated terminal emulator |
| [Oh My Zsh][oh-my-zsh] | Zsh shell framework with plugins and themes |
| [tmux][tmux] | Terminal multiplexer for managing multiple sessions |
| [Programmer Calculator][pcalc] | Calculator designed for programmers (hex, bin, oct) |
| [Meld][meld] | Visual diff and merge tool |

### Cross-platform

| Tool | Description |
|---|---|
| [Cascadia Code][cascadia-code] | Programming font with ligatures support |
| [tig][tig] | Text-mode interface for browsing Git repositories |
| [Universal Ctags][ctags] | Source code indexing tool for code navigation |
| [fzf][fzf] | Command-line fuzzy finder |
| [bat][bat] | `cat` replacement with syntax highlighting |
| [ripgrep][rg] | Fast recursive text search tool (better `grep`) |
| [delta][delta] | Syntax-highlighting pager for Git diffs |
| [coan][coan] | C/C++ preprocessor analysis tool |

---

## Deployment

Clone this repository (including submodules):

```bash
git clone --recurse-submodules https://github.com/Chienweichih/dotfiles.git
```

Then use [Dotbot][dotbot] to automatically install the dotfiles:

```bash
./install
```

Alternatively, you can manually execute the commands listed in [install.conf.yaml](install.conf.yaml).

---

## Manual Configuration

### Vim Packages

Update Vim packages with:

```bash
vim -c "PackUpdateQuit"
```

### Git Config

Copy the included git config and modify the `[user]`, `[diff]`, and `[merge]` sections to match your environment:

```bash
cp git/config ~/.config/git/config
```

---

## Windows Configuration

### WinGet

Execute the commands listed in [term/win/install.ps1](term/win/install.ps1).

### Git

Git config files are located at:

```
%USERPROFILE%\.config\git\config
%USERPROFILE%\.config\git\ignore
```

### Vim

Vim config file is located at:

```
%USERPROFILE%\_vimrc
```

Install the [minpac][minpac] package manager:

```bash
git clone https://github.com/k-takata/minpac.git %USERPROFILE%\vimfiles\pack\minpac\opt\minpac
```

---

## Miscellaneous

### WSL: Create a symlink to the Windows Desktop

If you're using WSL, you can link the Windows Desktop to your Linux home directory:

```bash
ln -s /mnt/c/Users/<user_name>/Desktop ~/Desktop
```

Replace `<user_name>` with your actual Windows username.

---

[dotbot]: <https://github.com/anishathalye/dotbot>
[alacritty]: <https://github.com/alacritty/alacritty>
[oh-my-zsh]: <https://github.com/ohmyzsh/ohmyzsh>
[tmux]: <https://github.com/tmux/tmux>
[pcalc]: <https://github.com/alt-romes/programmer-calculator>
[meld]: <https://gitlab.gnome.org/GNOME/meld>
[cascadia-code]: <https://github.com/microsoft/cascadia-code>
[tig]: <https://github.com/jonas/tig>
[ctags]: <https://github.com/universal-ctags/ctags>
[fzf]: <https://github.com/junegunn/fzf>
[bat]: <https://github.com/sharkdp/bat>
[rg]: <https://github.com/BurntSushi/ripgrep>
[delta]: <https://github.com/dandavison/delta>
[coan]: <https://coan2.sourceforge.net/index.php>
[minpac]: <https://github.com/k-takata/minpac>
