local function load_last_colorscheme()
	local file = io.open(vim.fn.stdpath("config") .. "/last_colorscheme", "r")
	if file then
		local colorscheme = file:read("*all")
		file:close()
		return colorscheme
	end
	return "gruvbox" -- Default colorscheme
end

-- Function to save the current colorscheme
local function save_current_colorscheme(name)
	local file = io.open(vim.fn.stdpath("config") .. "/last_colorscheme", "w")
	if file then
		file:write(name)
		file:close()
	end
end

-- Autocommand to update the colorscheme
vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function(args)
		save_current_colorscheme(args.match)
	end,
})

-- Load and set the last used colorscheme
local colorscheme = load_last_colorscheme()
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end
-- local colorscheme = "gruvbox"
-- require("gruvbox").setup({
-- 	terminal_colors = true, -- add neovim terminal colors
-- 	undercurl = true,
-- 	underline = true,
-- 	bold = true,
-- 	italic = {
-- 		strings = false,
-- 		emphasis = true,
-- 		comments = true,
-- 		operators = false,
-- 		folds = true,
-- 	},
-- 	strikethrough = true,
-- 	invert_selection = false,
-- 	invert_signs = false,
-- 	invert_tabline = false,
-- 	invert_intend_guides = false,
-- 	inverse = true, -- invert background for search, diffs, statuslines and errors
-- 	contrast = "", -- can be "hard", "soft" or empty string
-- 	palette_overrides = {},
-- 	overrides = {},
-- 	dim_inactive = false,
-- 	transparent_mode = false,
-- })
--
-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
-- if not status_ok then
-- 	return
-- end
