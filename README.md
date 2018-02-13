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
### Python Installation and Linking

In case on opening neovim/vimr it shows error that python3 is unavailable.
1. Check if python3 is installed if not brew/pip install it.
   a. In case of brew link error : 
    ```
    sudo mkdir usr/local/Frameworks
    sudo chown $(whoami):admin /usr/local/Frameworks
    brew install python3
    pip3 install --upgrade neovim
    ```
2. If already installed and the error is ycmServer ShutDown and needs to compile then
  ``` 
  cd ~/.config/nvim/plugged/youcompleteme
  ./install.py --clang-completer --go-completer --rust-completer --js-completer
  ```
  
Reopen neovim/vimr and run ```:PlugUpdate```  
