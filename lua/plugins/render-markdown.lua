local enable = true
if not enable then return {} end

return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    lazy = false,
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    opts = {
      -- Vim modes that will show a rendered view of the markdown file, :h mode(), for all enabled
      -- components. Individual components can be enabled for other modes. Remaining modes will be
      -- unaffected by this plugin.
      render_modes = { "i", "n", "c", "t" },

      -- Filetypes this plugin will run on.
      file_types = { "codecompanion", "markdown" },

      -- The level of logs to write to file: vim.fn.stdpath('state') .. '/render-markdown.log'.
      -- Only intended to be used for plugin development / debugging.
      log_level = "error",

      sign = {
        enabled = false,
      },

      heading = {
        sign = false,
        -- position = { "inline", "overlay" },
        width = "block", --{ "block", "full" }, --"block",
        left_margin = { 0.5, 0.0 },
        border = { true, false },
        left_pad = { 0.2, 0.0 },
        right_pad = { 0.2, 0.0 },
        min_width = { 0, 120 },
        icons = { "󰼏 ", "󰎨 " },
      },

      code = {
        sign = false,
        -- language_border = " ",
        -- language_left = "██",
        -- language_right = "██",
        position = "right",
        language_pad = 3,
        left_pad = 2,
        right_pad = 2,
        left_margin = 1,
        width = "block",
        min_width = 100,
        border = "thick",

        -- Icon to add to the left of inline code.
        inline_left = "",
        -- Icon to add to the right of inline code.
        inline_right = "",
      },

      -- bullet = {
      --   left_pad = 2,
      -- },

      checkbox = {
        -- left_pad = 2,
        checked = { scope_highlight = "@markup.strikethrough" },
      },

      quote = {
        repeat_linebreak = true,
      },

      pipe_table = { preset = "round" },

      indent = {
        enabled = false,
        icon = "",
      },

      padding = {
        -- Highlight to use when adding whitespace, should match background.
        highlight = "Normal",
      },

      html = {
        enabled = true,
        tag = {
          rules = {
            icon = "󰺾 ",
            -- highlight = "Title",
          },
          buf = {
            icon = " ",
            -- highlight = "Title",
          },
        },
      },
    },
  },
}
