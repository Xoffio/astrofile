# Astrofile Template

**NOTE:** This is for AstroNvim v4+

This is an edited clone of [AstroNvim Template](https://github.com/AstroNvim/template)

## 🛠️ Installation

### Make a backup of your current NVIM and shared folder

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

### Clone this repository

```shell
# Linux & MacOS
git clone https://github.com/Xoffio/astrofile ~/.config/nvim

# Windows
git clone https://github.com/Xoffio/astrofile ~\AppData\Local\nvim
```

### Start Neovim

When starting for the first time, NVIM will install all packages necessary.

```shell
nvim
```

Once all packages have been installed, close NVIM with `:wq` re-open it `nvim` and start `:Mason` just to make sure
everything installed successfully.

## Issues you might encounter

### Rust

If you get a warning about the `rust-analyzer` not working properly, that probably means that `rust-analyzer` was not installed correctly by Mason
You can install it by running `rustup component add rust-analyzer`

---

## Notes

- Any Astrocommunity plugin goes in `lua/community.lua`
- If the system doesn't have Nerd Fonts then disable the option `opts.icons_enabled` in the file `lua/lazy_setup.lua`
- To change the default theme go to the file `lua/plugins/astroui.lua`, and set the option `opts.colorscheme`.
- To configure LSP installed by Mason edit the file `lua/astrolsp.lua` `opts>config`
- `nvim` version tested: `v0.10.0`, `v0.10.3` (https://github.com/neovim/neovim/releases/tag/v0.10.3)

---
