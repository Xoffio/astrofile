local enable = false
if not enable then return {} end

return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  event = "BufReadPost",
  opts = {
    suggestion = {
      enabled = true,
      auto_trigger = true,
      keymap = {
        accept = "<C-l>",
        next = "<C-n>",
      },
    },
    panel = {
      enabled = false,
      auto_refresh = true,
    },
    filetypes = {
      ["*"] = true,
    },
  },
  config = function(_, opts)
    require("copilot").setup(opts)
    vim.keymap.set("n", "<leader>aCe", "<cmd>Copilot enable<cr>", { desc = " Enable Copilot" })
    vim.keymap.set("n", "<leader>aCd", "<cmd>Copilot disable<cr>", { desc = " Disable Copilot" })
    vim.keymap.set("n", "<leader>aCa", "<cmd>Copilot attach<cr>", { desc = "󱘖 Attach Copilot to Buffer" })
    vim.keymap.set("n", "<leader>aCD", "<cmd>Copilot detach<cr>", { desc = " Detach Copilot from Buffer" })
  end,
}
