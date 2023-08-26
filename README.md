# AstroNvim User Configuration Example

A user configuration template for [AstroNvim](https://github.com/AstroNvim/AstroNvim)
This is a for of [AstroNvim/user_example](https://github.com/AstroNvim/user_example)

## 🛠️ Installation

#### Make a backup of your current nvim and shared folder

```shell
# Linux & MacOS
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak

# Win
mv ~\AppData\Local\nvim ~\AppData\Local\nvim_bak
mv ~\AppData\Local\nvim-data ~\AppData\Local\nvim-data_bak
```

#### Clone AstroNvim

```shell
# Linux & MacOS
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim

# Win
git clone https://github.com/AstroNvim/AstroNvim ~\AppData\Local\nvim
```

```shell
# Open nvim
nvim
# let it install all the packages and then close it
```

#### Clone the repository

```shell
# Linux & MacOS
git clone https://github.com/Xoffio/astrofile ~/.config/nvim/lua/user

# Win
git clone https://github.com/Xoffio/astrofile ~\AppData\Local\nvim\lua\user
```

#### Start Neovim

```shell
nvim

# Start Mason to get the rest of packages
:Mason
```
