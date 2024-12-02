# Installations

## App

`brew install stow tmux neovim lolcat fzf`
`brew install --cask alacritty raycast orbstack`

### NeoVim

`git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim`

remove custom nvim folder.(~/.config/nvim)

`stow \.` or `stow nvim`, `stow nvim` one by one. 

### nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

### Plugins

```
# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
