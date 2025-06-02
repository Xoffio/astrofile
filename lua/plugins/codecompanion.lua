-- NOTE: uncomment the next line to disable this plugin
if true then return {} end

local sysname = vim.uv.os_uname().sysname
local is_win = sysname == "Windows_NT"

return {
  {
    "olimorris/codecompanion.nvim",
    opts = {
      adapters = {
        ollama = function()
          return require("codecompanion.adapters").extend("ollama", {
            env = {
              url = "http://localhost:11434",
              api_key = is_win and "APPDATA" or "TERM",
            },
            headers = {
              ["Content-Type"] = "application/json",
              ["Authorization"] = "Bearer ${api_key}",
            },
            parameters = {
              sync = true,
            },
          })
        end,
      },
      strategies = {
        chat = {
          adapter = "ollama",
        },
        inline = {
          adapter = "ollama",
        },
        cmd = {
          adapter = "ollama",
        },
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  },
}
