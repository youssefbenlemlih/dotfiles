# Dotfiles

## What's included
- Configuration files for vim, tig, and zsh.
- Gruvbox theme for iterm and windows terminal.

## Install 

### Vim, Zsh, Tig
First, make backups!

```zsh
cp ~/.vimrc ~/.vimrc.backup \
cp ~/.zshrc ~/.zshrc.backup \
cp ~/.tigrc ~/.tigrc.backup
```

Clone the repository in your home folder
```zsh
cd ~ \
git clone https://github.com/youssefbenlemlih/dotfiles.git
```

Create symbolic links to the configs
```zsh
ln -s ~/dotfiles/.vimrc ~/.vimrc \
ln -s ~/dotfiles/.zshrc ~/.zshrc \
ln -s ~/dotfiles/.tigrc ~/.tigrc
```

### Iterm2 Theme

To install the iterm theme (gruvbox):

- Launch iTerm 2
- Type `⌘`+`i`
- Navigate to Colors tab
- Click on Load Presets
- Click on Import
- Select the `*.itermcolors` files 
- Click on Load Presets and select the color scheme


### Windows Terminal Theme

To install the windows terminal theme (gruvbox)
- Launch Windows Terminal
- Type `Ctrl`+`Alt`+`,`
- Copy/paste the settings from `./windows-terminal-settings.json`
