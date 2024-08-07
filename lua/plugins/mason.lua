-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Mason plugins

---@type LazySpec
return {
	-- Use mason-lspconfig to configure LSP installations
	{
		"williamboman/mason-lspconfig.nvim",
		-- overrides `require("mason-lspconfig").setup(...)`
		opts = {
			ensure_installed = {
				"lua_ls",
				"bashls",
				"rust_analyzer",
				"harper_ls", -- Open source Grammarly
				-- Add more arguments for adding more language servers
			},
		},
	},
	-- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
	{
		"jay-babu/mason-null-ls.nvim",
		-- overrides `require("mason-null-ls").setup(...)`
		opts = {
			ensure_installed = {
				"stylua",
				"shellcheck",
				"shfmt",
				"bacon", -- for Rust
				-- add more arguments for adding more null-ls sources
			},
		},
	},
	{
		"jay-babu/mason-nvim-dap.nvim",
		-- overrides `require("mason-nvim-dap").setup(...)`
		opts = {
			ensure_installed = {
				"python",
				-- add more arguments for adding more debuggers
			},
		},
	},
}
