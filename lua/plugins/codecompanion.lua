local enable = false
if not enable then return {} end

-- local sysname = vim.uv.os_uname().sysname
-- local is_win = sysname == "Windows_NT"

return {
  {
    "olimorris/codecompanion.nvim",
    version = "^19.0.0",
    opts = {
      display = {
        chat = {
          --   show_header_separator = false,
          --   show_settings = false,
          window = {
            width = 0.35,
            opts = {
              number = false,
              relativenumber = false,
              signcolumn = "no",
            },
          },
        },
        action_palette = {
          provider = "snacks",
        },
      },
      -- Keep this commented if using copilot.
      -- adapters = {
      --   ollama = function()
      --     return require("codecompanion.adapters").extend("ollama", {
      --       env = {
      --         url = "http://localhost:11434",
      --         api_key = is_win and "APPDATA" or "TERM",
      --       },
      --       headers = {
      --         ["Content-Type"] = "application/json",
      --         ["Authorization"] = "Bearer ${api_key}",
      --       },
      --       parameters = {
      --         sync = true,
      --       },
      --     })
      --   end,
      -- },
      -- strategies = {
      --   chat = {
      --     adapter = "ollama",
      --   },
      --   inline = {
      --     adapter = "ollama",
      --   },
      --   cmd = {
      --     adapter = "ollama",
      --   },
      -- },
      extensions = {
        -- Enable history extension to save and manage your chats
        history = {
          enabled = true,
          opts = {
            -- Keymap to open history from chat buffer (default: gh)
            keymap = "gh",
            -- Keymap to save the current chat manually (when auto_save is disabled)
            save_chat_keymap = "sc",
            ---On exiting and entering neovim, loads the last chat on opening chat
            continue_last_chat = false,
            ---When chat is cleared with `gx` delete the chat from history
            delete_on_clearing_chat = false,
            ---Directory path to save the chats
            -- dir_to_save = vim.fn.stdpath "data" .. "/codecompanion-history",
            dir_to_save = vim.fn.expand "~/Documents" .. "/codecompanion-history",
            ---Enable detailed logging for history extension
            enable_logging = false,
          },
        },
        -- Enable spinner extension to show a spinner in chat status line during response generation
        spinner = {
          -- enabled = true, -- This is the default
          opts = {
            -- Your spinner configuration goes here
            style = "native",
          },
        },
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      -- Optional dependency to enable history extension
      "ravitemer/codecompanion-history.nvim",
      -- Optional dependency to enable spinner status in chat.
      "lalitmee/codecompanion-spinners.nvim",
    },
    config = function(_, opts)
      require("codecompanion").setup(opts)
      vim.keymap.set("n", "<leader>acc", "<cmd>CodeCompanionChat<cr>", { desc = "󱐏 Open New Chat" })
      vim.keymap.set("n", "<leader>act", "<cmd>CodeCompanionChat toggle<cr>", { desc = " Toggle Chat" })
      vim.keymap.set("n", "<leader>ach", "<cmd>CodeCompanionHistory<cr>", { desc = " History" })
      vim.keymap.set({ "n", "v" }, "<leader>aca", "<cmd>CodeCompanionActions<cr>", { desc = " Actions" })
      vim.keymap.set("n", "<leader>acs", "<cmd>CodeCompanionSummary<cr>", { desc = " Summary" })
    end,
  },
}
