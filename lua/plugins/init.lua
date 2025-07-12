return {
	"nvim-lua/plenary.nvim", -- Useful lua functions used by lots of plugins
	"windwp/nvim-autopairs", -- Autopairs, integrates with both cmp and treesitter
	"numToStr/Comment.nvim",
	"JoosepAlviste/nvim-ts-context-commentstring",
	"kyazdani42/nvim-web-devicons",
	"kyazdani42/nvim-tree.lua",
	"moll/vim-bbye",
	-- "nvim-lualine/lualine.nvim",
	"akinsho/toggleterm.nvim",
	-- "ahmedkhalf/project.nvim",
	"lewis6991/impatient.nvim",
	"lukas-reineke/indent-blankline.nvim",
	-- use { "goolord/alpha-nvim", commit = "0bb6fc0646bcd1cdb4639737a1cee8d6e08bcc31" }
	"folke/which-key.nvim",
	"kylechui/nvim-surround",
	"Bekaboo/deadcolumn.nvim",
	"wfxr/minimap.vim", -- Minimap
	"luckasRanarison/tailwind-tools.nvim", -- tailwind tools
	"nvim-flutter/flutter-tools.nvim",

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

	"hrsh7th/nvim-cmp", -- The completion pluginhttps://github.com/hrsh7th/nvim-cmp
	"brenoprata10/nvim-highlight-colors", -- Color highlight for hex and similar

	"hrsh7th/cmp-path", -- path completions
	"saadparwaiz1/cmp_luasnip", -- snippet completions
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-nvim-lua",
	-- Snippets
	"L3MON4D3/LuaSnip", --snippet engine
	"rafamadriz/friendly-snippets", -- a bunch of snippets to use

	"karb94/neoscroll.nvim", -- smooth scroll

	-- LSP

	"neovim/nvim-lspconfig",
	"williamboman/mason-lspconfig.nvim",
	"williamboman/mason.nvim", -- simple to use language server installer

	"jose-elias-alvarez/null-ls.nvim", -- for formatters and linters
	"RRethy/vim-illuminate",

	-- Git blame
	"f-person/git-blame.nvim",

	-- Telescope
	"nvim-telescope/telescope.nvim",

	"nvim-treesitter/nvim-treesitter",

	-- Copilot
	"github/copilot.vim",
	"zbirenbaum/copilot-cmp",

	-- Git
	"lewis6991/gitsigns.nvim",

	"akinsho/bufferline.nvim", -- bufferline

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

	-- Arrow
	{
		"otavioschwanck/arrow.nvim",
		opts = {
			show_icons = true,
			leader_key = ";",
			buffer_leader_key = "m",
		},
	},

	"eandrju/cellular-automaton.nvim",
}
