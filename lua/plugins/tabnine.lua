-- NOTE: uncomment the next line to disable this plugin
-- if true then return {} end

-- Get platform dependant build script
local function tabnine_build_path()
	-- Replace vim.uv with vim.loop if using NVIM 0.9.0 or below
	if vim.uv.os_uname().sysname == "Windows_NT" then
		return "powershell.exe -file .\\dl_binaries.ps1"
	else
		return "./dl_binaries.sh"
	end
end

return {
	"codota/tabnine-nvim",
	build = tabnine_build_path(),
	name = "tabnine",
	cmd = { "TabnineStatus", "TabnineDisable", "TabnineEnable", "TabnineToggle" },
	event = "User AstroFile",
	opts = {
		disable_auto_comment = true,
		accept_keymap = "<S-Right>",
		dismiss_keymap = "<C><BS>",
		debounce_ms = 800,
		suggestion_color = { gui = "#808080", cterm = 244 },
		exclude_filetypes = { "TelescopePrompt" },
		log_file_path = nil, -- absolute path to Tabnine log file
	},
}
