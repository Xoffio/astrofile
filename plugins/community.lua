return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin", enabled = true },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.pack.rust" },
  {
    -- further customize the options set by the community
    "catppuccin",
    opts = {
      flavour = "mocha",              -- latte, frappe, macchiato, mocha
      transparent_background = false, -- disables setting the background color.
      background = {
        light = "latte",
        dark = "mocha",
      },
    },
  },
}
