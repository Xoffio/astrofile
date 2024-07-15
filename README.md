# Astrofile Template

**NOTE:** This is for AstroNvim v4+

This is an edited clone of [AstroNvim Template](https://github.com/AstroNvim/template)

## 🛠️ Installation

#### Make a backup of your current NVIM and shared folder

```shell
# Linux & MacOS
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak

# Windows
mv ~\AppData\Local\nvim ~\AppData\Local\nvim_bak
mv ~\AppData\Local\nvim-data ~\AppData\Local\nvim-data_bak
```

#### Clone this repository

```shell
# Linux & MacOS
git clone https://github.com/Xoffio/astrofile ~/.config/nvim

# Windows
git clone https://github.com/Xoffio/astrofile ~\AppData\Local\nvim
```

#### Start Neovim

When starting for the first time, NVIM will install all packages necessary.

```shell
nvim
```

Once all packages have been installed, close NVIM with `:wq` re-open it `nvim` and start `:Mason` just to make sure
everything installed successfully.
