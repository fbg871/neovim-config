local fn = vim.fn

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Set <space> as leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Autocommand that reloads neovim whenever you save the plugins.lua file

-- Disable copilot on startup
vim.api.nvim_create_autocmd("VimEnter", {
	pattern = "*",
	callback = function()
		vim.cmd("Copilot disable")
	end,
})

-- Use a protected call so we don't error out on first use
local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
	return
end

vim.g.gruvbox_material_foreground = "original"
vim.g.gruvbox_material_background = "hard"

-- Install your plugins here
return lazy.setup({
	"nvim-lua/plenary.nvim", -- Useful lua functions used by lots of plugins
	"windwp/nvim-autopairs", -- Autopairs, integrates with both cmp and treesitter
	"numToStr/Comment.nvim",
	"JoosepAlviste/nvim-ts-context-commentstring",
	"kyazdani42/nvim-web-devicons",
	"kyazdani42/nvim-tree.lua",
	"akinsho/bufferline.nvim",
	"moll/vim-bbye",
	"nvim-lualine/lualine.nvim",
	"akinsho/toggleterm.nvim",
	"ahmedkhalf/project.nvim",
	"lewis6991/impatient.nvim",
	"lukas-reineke/indent-blankline.nvim",
	-- use { "goolord/alpha-nvim", commit = "0bb6fc0646bcd1cdb4639737a1cee8d6e08bcc31" }
	"folke/which-key.nvim",
	"kylechui/nvim-surround",
	"Bekaboo/deadcolumn.nvim",
	"wfxr/minimap.vim", -- Minimap

	-- Colorschemes
	"folke/tokyonight.nvim",
	"lunarvim/darkplus.nvim",
	-- "ellisonleao/gruvbox.nvim", })
	"NLKNguyen/papercolor-theme", -- Papercolor
	"rose-pine/neovim", -- Rose Pine
	"marko-cerovac/material.nvim", -- Material
	"rebelot/kanagawa.nvim", -- Kangawa
	"sainnhe/sonokai", -- Sonokai
	"sainnhe/everforest", -- Everforest
	"sainnhe/gruvbox-material", -- Gruvbox Material
	"sainnhe/edge", -- Edge
	"olimorris/onedarkpro.nvim", -- One Dark Pro
	"morhetz/gruvbox", -- Gruvbox

	-- Cmp
	"hrsh7th/nvim-cmp", -- The completion plugin
	"hrsh7th/cmp-buffer", -- buffer completions
	"hrsh7th/cmp-path", -- path completions
	"saadparwaiz1/cmp_luasnip", -- snippet completions
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-nvim-lua",
	-- Snippets
	-- "L3MON4D3/LuaSnip", --snippet engine
	"rafamadriz/friendly-snippets", -- a bunch of snippets to use

	-- LSP
	"neovim/nvim-lspconfig", -- enable LSP
	"williamboman/mason.nvim", -- simple to use language server installer
	"williamboman/mason-lspconfig.nvim",
	"jose-elias-alvarez/null-ls.nvim", -- for formatters and linters
	"RRethy/vim-illuminate",

	-- Git blame
	"f-person/git-blame.nvim",

	-- Telescope
	"nvim-telescope/telescope.nvim",

	-- Treesitter
	"nvim-treesitter/nvim-treesitter",

	-- Copilot
	"github/copilot.vim",
	"zbirenbaum/copilot-cmp",

	-- Git
	"lewis6991/gitsigns.nvim",

	-- Leap
	"ggandor/leap.nvim",

	-- Conform (formatter)
	"stevearc/conform.nvim",

	-- Nvim scrollbar (for showing diagnostics)
	"petertriho/nvim-scrollbar",

	-- Reticle (cursorline only in active window)
	"tummetott/reticle.nvim",

	-- Colorful-winsep
	"nvim-zh/colorful-winsep.nvim",
})
