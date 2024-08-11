-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder

  { import = "astrocommunity.pack.rust",              enabled = true },
  { import = "astrocommunity.pack.typescript",        enabled = true },
  { import = "astrocommunity.pack.html-css",          enabled = true },
  { import = "astrocommunity.pack.tailwindcss",       enabled = true },
  { import = "astrocommunity.colorscheme.catppuccin", enabled = true },
  {
    -- further customize the options set by the community
    "catppuccin",
    opts = {
      flavour = "mocha",           -- latte, frappe, macchiato, mocha
      transparent_background = false, -- disables setting the background color.
      background = {
        light = "latte",
        dark = "mocha",
      },
    },
  },
}
