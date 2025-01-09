# Installations

`git clone https://github.com/johnny9144/dot-files.git ~/.files`

> you can use any folder name as you like, but make sure to put it under `~`, otherwise you need to specify
> the path when you link configs by `stow`.

### Install zsh

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

### nvm

`curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash`

### Plugins

```
# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### Link configs

execute `stow --ignore keyboard */` to apply all
or `stow nvim`, `stow alacritty` as you need.

## Homebrew

`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

## Apps via Homebrew

`brew install stow tmux neovim lolcat fzf ripgrep the_silver_searcher terraform-lsp go terraform`
`brew install --cask alacritty raycast orbstack font-jetbrains-mono-nerd-font`

### Optional apps

`brew install --cask android-platform-tools`
`brew install scrcpy`

## Rectangle

Open Rectangle app settings and import settings from ~/RectangleConfig.json

> Notice: some of the shortcut might be conflict with Alacritty if you don't import the configs.
