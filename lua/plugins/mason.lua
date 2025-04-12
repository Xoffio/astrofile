-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Mason

-- NOTE: the feature "condition" is not working... I will get back to this later and fix it

---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        -- install language servers
        "lua-language-server",
        "rust-analyzer",
        -- "harper_ls", -- Open source Grammarly

        -- install formatters
        "stylua",
        {
          "shfmt",
          condition = function() return (vim.fn.executable "bash" == 1) end,
        },

        -- install linters
        { "shellcheck", condition = function() return os.execute "bash --version" == 1 end },
        { "bacon", condition = function() return os.execute "cargo --version" == 1 end },

        -- install debuggers
        "debugpy",

        -- install any other package
        -- "tree-sitter-cli",
      },
    },
  },
}
