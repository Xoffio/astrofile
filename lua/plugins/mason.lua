-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Mason

---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = function(_, opts)
      local tools = {
        -- install language servers --
        --
        "lua-language-server",
        vim.fn.executable "cargo" == 1 and "rust-analyzer" or nil,
        -- "harper_ls" -- Open source Grammarly

        -- install formatters --
        --
        vim.fn.executable "cargo" == 1 and "stylua" or nil,
        vim.fn.executable "bash" == 1 and "shfmt" or nil,

        -- install linters --
        --
        vim.fn.executable "bash" == 1 and "shellcheck" or nil,
        vim.fn.executable "cargo" == 1 and "bacon" or nil,

        -- install debuggers --
        --
        vim.fn.executable "python" == 1 and "debugpy" or nil,

        -- install any other package --
        --
        -- "tree-sitter-cli",
      }

      opts.ensure_installed = tools
    end,
  },
}
