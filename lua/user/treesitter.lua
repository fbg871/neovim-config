local M = {}
function M.config()
	local treesitter = require("nvim-treesitter")
	local configs = require("nvim-treesitter.configs")

	configs.setup({
		ensure_installed = {
			"lua",
			"markdown",
			"markdown_inline",
			"bash",
			"python",
			"c",
			"typescript",
			"javascript",
			"go",
			"json",
		}, -- put the language you want in this array
		-- ensure_installed = "all", -- one of "all" or a list of languages
		ignore_install = { "" }, -- List of parsers to ignore installing
		sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)

		highlight = {
			enable = true, -- false will disable the whole extension
			disable = { "css" }, -- list of language that will be disabled
		},
		autopairs = {
			enable = true,
		},
		indent = { enable = true, disable = { "python", "css" } },

		context_commentstring = {
			config = {
				javascript = {
					__default = "// %s",
					jsx_element = "{/* %s */}",
					jsx_fragment = "{/* %s */}",
					jsx_attribute = "// %s",
					comment = "// %s",
				},
				typescript = { __default = "// %s", __multiline = "/* %s */" },
			},
			enable = true,
			enable_autocmd = false,
		},
	})
end

return M
