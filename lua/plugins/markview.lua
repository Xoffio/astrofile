local enable = false
if not enable then return {} end

return {
  {
    "OXY2DEV/markview.nvim",
    lazy = false,
    opts = {
      preview = {
        filetypes = { "markdown", "codecompanion", "Avante" },
        ignore_buftypes = {},
        modes = { "i", "n", "c", "t" },
      },

      markdown = {
        headings = {
          enable = true,
        },
        code_blocks = {
          enable = true,

          pad_amount = 2,
          sign = false,
        },
      },
    },
  },
}
