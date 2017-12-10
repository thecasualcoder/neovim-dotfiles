# Neovim configs

My neovim configurations

## Installation

> Ensure you have installed Vim plugin manager vim-plug, if not follow the instruction [here](https://github.com/junegunn/vim-plug) and install it before running continuing

```sh
mkdir -p ~/.config/
git clone https://github.com/aswinkarthik93/neovim-dotfiles.git ~/.config/nvim
```

Open `nvim`, to install all plugs run `:PlugInstall`

## Auto Formatting

neovim is configured with neoformat plugin, to enable formatting for javascript:

```sh
npm install -g prettier
```

## Addons

### Javascript

To enable flow run:

```sh
npm install -g flow-bin
```
