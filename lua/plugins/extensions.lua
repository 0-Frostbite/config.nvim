return {
	-- Neovim plugin manager
	{ "folke/lazy.nvim", version = false },
	-- Syntax highlighting
	{ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
	-- Fuzzy finder
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
			},
			"nvim-telescope/telescope-file-browser.nvim",
		},
	},
	-- File explorer
	{ "nvim-tree/nvim-tree.lua" },
	-- Nerd font icons for use by Neovim plugins
	{ "nvim-tree/nvim-web-devicons" },
	-- File traversal
	{
		"ThePrimeagen/harpoon",
		keys = { "<leader>a", "<A-a>" },
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
	},
	-- Code refactoring
	{
		"ThePrimeagen/refactoring.nvim",
		requires = {
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-treesitter/nvim-treesitter" },
		},
	},
	-- Tabline plugin
	-- { "romgrk/barbar.nvim" },
	-- Neovim statusline
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup()
		end,
	},
	-- Toggle and manage terminals
	{ "akinsho/toggleterm.nvim", version = "*", keys = { "<leader>t" } },
	-- UI replacement for messages, cmdline and popupmenu
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {},
		dependencies = {
			"MunifTanjim/nui.nvim",
			-- "rcarriga/nvim-notify",
		},
	},
	-- Enhanced code navigation
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		opts = {},
		keys = {
			{
				"s",
				mode = { "n", "x", "o" },
				function()
					require("flash").jump()
				end,
				desc = "Flash",
			},
			{
				"S",
				mode = { "n", "x", "o" },
				function()
					require("flash").treesitter()
				end,
				desc = "Flash Treesitter",
			},
			{
				"r",
				mode = { "o" },
				function()
					require("flash").remote()
				end,
				desc = "Remote Flash",
			},
			{
				"R",
				mode = { "o", "x" },
				function()
					require("flash").treesitter_search()
				end,
				desc = "Treesitter Search",
			},
			{
				"<C-s>",
				mode = { "n" },
				function()
					require("flash").toggle()
				end,
				desc = "Toggle Flash Search",
			},
		},
	},
	-- UI for Neovim notifications
	{
		"j-hui/fidget.nvim",
		opts = {
			notification = {
				window = {
					winblend = 0,
					align = "top",
				},
			},
		},
		config = function()
			vim.notify = require("fidget")
		end,
	},
	-- Autopair plugin
	{ "windwp/nvim-autopairs", event = "InsertEnter", config = true },
	-- Commenting plugin
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},
	-- highlight patterns in text
	{ "echasnovski/mini.hipatterns", event = "BufReadPre", opts = {} },
	-- Incremental LSP renaming
	{ "smjonas/inc-rename.nvim" },
	-- Improve viewing Markdown files
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {},
		config = function()
			require("render-markdown").setup()
		end,
	},
	-- add Indentation guides
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = {},
		config = function()
			require("ibl").setup()
		end,
	},
	-- Colorscheme picker
	{ "zaldih/themery.nvim" },
	-- Snippent Engine
	{
		"L3MON4D3/LuaSnip",
		run = "make install_jsregexp",
		dependencies = { "rafamadriz/friendly-snippets" },
	},
	-- auto close and rename html tags
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},
	-- Run Leetcode in Neovim
	{
		"kawre/leetcode.nvim",
		build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
		dependencies = {
			"nvim-telescope/telescope.nvim",
			-- "ibhagwan/fzf-lua",
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
		},
		opts = {},
	},
	-- Start a live server
	{
		"barrett-ruth/live-server.nvim",
		build = "pnpm add -g live-server",
		cmd = { "LiveServerStart", "LiveServerStop" },
		config = function()
			require("live-server").setup()
		end,
	},
	-- Zen mode
	{
		"folke/zen-mode.nvim",
		opts = {
			window = {
				backdrop = 1,
				width = 160,
				height = 1,
			},
		},
	},
	-- Code folding
	{ "kevinhwang91/nvim-ufo", dependencies = { "kevinhwang91/promise-async" } },
	-- Change background transparency
	{ "xiyaowong/transparent.nvim" },
}
