if true then return {} end

return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  event = "BufReadPost",
  opts = {
    suggestion = {
      enabled = true,
      keymap = {
        accept = "<C-l>",
        next= "<C-n>",
      },
    },
  },
}
