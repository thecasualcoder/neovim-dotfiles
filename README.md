# Neovim configs

My neovim configurations

## Editors installation

- [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
- [vimr](https://github.com/qvacua/vimr) (For external Window Gui)

## Prerequisites

The following packages need to be installed

- [curl](https://curl.haxx.se/)

## Installation

1. Clone the repository.

```sh
mkdir -p ~/.config/

## Clone the repository to ~/.config/nvim
git clone --depth 1 https://github.com/aswinkarthik93/neovim-dotfiles.git ~/.config/nvim

## Open nvim
nvim
```

2. Nvim will automatically install Plugins. It will take some time to finish.

- For Installing new plugins, run `:PlugInstall` within the editor.
- For Updating the plugins, run `:PlugUpdate` within the editor.
- The default theme is `NeoSolarized` which is a **Solarized dark** theme and will work post plugin installation.

3. Post installation if there are issues, use `:CheckHealth`. Neovim will do a health check and report on what is missing and how to fix it.

## The Looks!

**Neovim**

![demo](/demo/nvim.gif)

**Vimr**

![demo](/demo/vimr.gif)

The above `Vimr` is customized. It has,

- Hybrid colorscheme
- [Fira code](https://github.com/tonsky/FiraCode) font with Font ligatures enabled

## Keymaps

Frequently used keymaps,

| Name               | Value                          |
| :----------------- | :----------------------------- |
| \<leader\>         | ,                              |
| , + e              | Files fuzzy finder             |
| , + b              | Buffer fuzzy finder            |
| \<ctrl\> + /       | Opens NERDTree                 |
| vv                 | Split Window vertically        |
| ss                 | Split Window horizontally      |
| \<ctrl\> + j,k,h,l | Navigation across split panels |
| , + z              | Move to Previous buffer        |
| , + x              | Move to Next buffer            |
| \<ctrl\> + 6       | Toggle between buffers         |

**Golang specific Keymaps**

| Name              | Value                               |
| :---------------- | :---------------------------------- |
| , + r             | Run all tests                       |
| , + \<shift\> + r | Run specific test                   |
| \<ctrl\> + a      | Switch between test and source code |
| \<ctrl\> + ]      | Goto definition                     |
| \<ctrl\> + t      | Pop stack when going to definition  |

## Features

Frequently used features,

- Uses `fzf` for fuzzy-finding.
- Search with Ripgrep using `:Rgrep`
- Use only `j`,`k`,`l`, and `h` for navigation. Navigation keys will not work. (Apologies for this)
- Use `:BufOnly` to delete all buffers except the active one.
- Distraction free mode using `:Goyo`

## Custom configurations

For custom configurations like changing theme locally or new keymaps, use `~/.config/nvim/custom.vim`. If you feel it is worth merging with this repository, pull requests are welcome too.

## Addons

## Auto Formatting

neovim is configured with neoformat plugin, to enable formatting for javascript:

```sh
npm install -g prettier
```

### Go

#### Autocompletion

For autocompletion [deoplete](https://github.com/Shougo/deoplete.nvim) asynchronous completion framework and [deoplete-go](https://github.com/zchee/deoplete-go) backed by [gocode](https://github.com/mdempsky/gocode) is used.

To install gocode, execute

```sh
go get -u github.com/mdempsky/gocod
```

### Rust

### Autocompletion

For autocompletion [racer](https://github.com/racer-rust/racer) is used, to correctly configure it follow the instruction on how to install racer from [here](https://github.com/racer-rust/racer#installation)
Configure your bash/zsh profile with `export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"`

### Javascript

1. To enable flow run:

```sh
npm install -g flow-bin
```

### Shell/Bash Script

To support format shell script

```sh
brew install shfmt
```

### Yaml

To lint yaml files, install

```sh
brew install yamllint
```

> For more info on yaml liniting visit [here](https://github.com/adrienverge/yamllint)

### Jq support

1. Install [`jq`](https://github.com/stedolan/jq) to use `:SortJson` (sorts all keys of a JSON file).

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

### Updating

Pull the latest changes from git and then reopen neovim/vimr and run `:PlugUpdate`

## Try it out with Docker

We have a Docker image which you use to try out this neovim config without affecting your existing setup.

```
docker run --rm -it aswinkarthik93/neovim-dotfiles bash
nvim
```