-- NOTE: uncomment the next line to disable this plugin
if true then return {} end

local sysname = vim.uv.os_uname().sysname
local is_win = sysname == "Windows_NT"

return {
  {
    "milanglacier/minuet-ai.nvim",
    opts = {
      virtualtext = {
        -- Specify the filetypes to enable automatic virtual text completion,
        -- e.g., { 'python', 'lua' }. Note that you can still invoke manual
        -- completion even if the filetype is not on your auto_trigger_ft list.
        auto_trigger_ft = { "*" },
        -- specify file types where automatic virtual text completion should be
        -- disabled. This option is useful when auto-completion is enabled for
        -- all file types i.e., when auto_trigger_ft = { '*' }
        auto_trigger_ignore_ft = {},
        keymap = {
          -- accept whole completion
          accept = "<A-a>",
          -- accept one line
          accept_line = "<S-Right>",
          -- accept n lines (prompts for number)
          -- e.g. "A-z 2 CR" will accept 2 lines
          accept_n_lines = "<A-z>",
          -- Cycle to prev completion item, or manually invoke completion
          prev = "<A-[>",
          -- Cycle to next completion item, or manually invoke completion
          next = "<A-]>",
          dismiss = "<A-e>",
        },
        -- Whether show virtual text suggestion when the completion menu
        -- (nvim-cmp or blink-cmp) is visible.
        show_on_completion_menu = true,
      },

      blink = {
        enable_auto_complete = true,
      },

      provider = "openai_fim_compatible",
      -- I recommend beginning with a small context window size and incrementally
      -- expanding it, depending on your local computing power. A context window
      -- of 512, serves as an good starting point to estimate your computing
      -- power. Once you have a reliable estimate of your local computing power,
      -- you should adjust the context window to a larger value.
      context_window = 100,
      -- when the total characters exceed the context window, the ratio of
      -- context before cursor and after cursor, the larger the ratio the more
      -- context before cursor will be used. This option should be between 0 and
      -- 1, context_ratio = 0.75 means the ratio will be 3:1.
      context_ratio = 0.75,
      throttle = 1000, -- only send the request every x milliseconds, use 0 to disable throttle.
      -- debounce the request in x milliseconds, set to 0 to disable debounce
      debounce = 300,
      -- If completion item has multiple lines, create another completion item
      -- only containing its first line. This option only has impact for cmp and
      -- blink. For virtualtext, no single line entry will be added.
      add_single_line_entry = true,
      n_completions = 1, -- recommend for local model for resource saving
      provider_options = {
        openai_fim_compatible = {
          api_key = is_win and "APPDATA" or "TERM",
          name = "Ollama",
          end_point = "http://localhost:11434/v1/completions",
          model = "qwen2.5-coder:0.5b",
          optional = {
            max_tokens = 20,
            top_p = 0.6,
          },
        },
      },

      presets = {
        ollama_qwen25coder_0b = {
          provider = "openai_fim_compatible",
          n_completions = 1, -- recommend for local model for resource saving
          context_window = 265,
          provider_options = {
            openai_fim_compatible = {
              api_key = is_win and "APPDATA" or "TERM",
              name = "Ollama",
              end_point = "http://localhost:11434/v1/completions",
              model = "qwen2.5-coder:0.5b",
              optional = {
                max_tokens = 20,
                top_p = 0.6,
              },
            },
          },
        },

        ollama_qwen25coder_1b = {
          provider = "openai_fim_compatible",
          n_completions = 1, -- recommend for local model for resource saving
          context_window = 265,
          provider_options = {
            openai_fim_compatible = {
              -- For Windows users, TERM may not be present in environment variables.
              -- Consider using APPDATA instead.
              api_key = is_win and "APPDATA" or "TERM",
              name = "Ollama",
              end_point = "http://localhost:11434/v1/completions",
              model = "qwen2.5-coder:1.5b",
              optional = {
                max_tokens = 56,
                top_p = 0.9,
              },
            },
          },
        },

        ollama_qwen25coder_14b = {
          provider = "openai_fim_compatible",
          n_completions = 1, -- recommend for local model for resource saving
          context_window = 265,
          provider_options = {
            openai_fim_compatible = {
              api_key = is_win and "APPDATA" or "TERM",
              name = "Ollama",
              end_point = "http://localhost:11434/v1/completions",
              model = "qwen2.5-coder:14b",
              optional = {
                max_tokens = 56,
                top_p = 0.9,
              },
            },
          },
        },
      },
    },
    dependencies = {
      { "nvim-lua/plenary.nvim" },
    },
    specs = {
      { "hrsh7th/nvim-cmp", optional = true },
      { "Saghen/blink.cmp", optional = true },
    },
  },
  {
    "Saghen/blink.cmp",
    opts = {
      -- keymap = {
      --   -- Manually invoke minuet completion.
      --   ["<A-y>"] = require("minuet").make_blink_map(),
      -- },
      sources = {
        -- Enable minuet for autocomplete
        default = { "lsp", "path", "buffer", "snippets", "minuet" },
        -- For manual completion only, remove 'minuet' from default
        providers = {
          minuet = {
            name = "minuet",
            module = "minuet.blink",
            async = true,
            -- Should match minuet.config.request_timeout * 1000,
            -- since minuet.config.request_timeout is in seconds
            timeout_ms = 2000,
            score_offset = 50, -- Gives minuet higher priority among suggestions
          },
        },
      },
      -- Recommended to avoid unnecessary request
      completion = { trigger = { prefetch_on_insert = false } },
    },
  },
}
