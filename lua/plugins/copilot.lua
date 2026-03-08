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
  },
}
