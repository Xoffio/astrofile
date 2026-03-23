return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<leader>a"] = {
            desc = " AI Tools",
          },
          ["<leader>ac"] = {
            desc = " Code Companion",
          },
          ["<leader>aC"] = {
            desc = " Copilot",
          },
          -- ["<leader>ac"] = {
          --   "<cmd>CodeCompanionChat Toggle<cr>",
          --   desc = "Toggle CodeCompanionChat",
          -- },
        },
        v = {
          ["<leader>a"] = {
            desc = " AI Tools",
          },
          ["<leader>ac"] = {
            desc = " Code Companion",
          },
        },
      },
    },
  },
}
