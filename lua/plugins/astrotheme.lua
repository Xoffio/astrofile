-- AstroTheme plugin configuration
-- Set to true to enable the plugin, false to disable it

local enable = false
if not enable then return {} end

---@type LazySpec
return {
  "AstroNvim/astrotheme",
  opts = {
    style = {
      transparent = true, -- transparent background
      inactive = false, -- dim inactive windows
      float = false, -- transparent background for floating windows
      neotree = false, -- transparent background for NeoTree
      border = true, -- enable borders for floating windows
      title_invert = true, -- invert title colors for floating windows
      simple_syntax_colors = false,
    },

    termguicolors = true, -- Bool value, toggles if termguicolors are set by AstroTheme.
    terminal_colors = true, -- Bool value, toggles if terminal_colors are set by AstroTheme.
  },
}
