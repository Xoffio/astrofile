-- NOTE: uncomment the next line to disable this plugin
if true then return {} end

local sysname = vim.uv.os_uname().sysname
local is_win = sysname == "Windows_NT"

return {
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = false, -- Never set this value to "*"! Never!
    opts = {
      -- add any opts here
      -- for example
      provider = "ollama",
      ollama = {
        model = "qwen2.5-coder:3b",
      },
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    build = is_win and "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" or "make",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
  },
}
