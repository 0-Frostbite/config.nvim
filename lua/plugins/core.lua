return {
	{ "folke/lazy.nvim", version = false },
	{ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
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
	{ "nvim-tree/nvim-tree.lua" },
	{ "nvim-tree/nvim-web-devicons" },
	{
		"ThePrimeagen/harpoon",
		keys = { "<leader>a", "<A-a>" },
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
	},
	{
		"ThePrimeagen/refactoring.nvim",
		requires = {
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-treesitter/nvim-treesitter" },
		},
	},
	-- { "romgrk/barbar.nvim" },
	{ "nvim-lualine/lualine.nvim" },
	{ "williamboman/mason.nvim" },
	{ "stevearc/dressing.nvim" },
	{ "akinsho/toggleterm.nvim", version = "*", keys = { "<leader>t" } },
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {},
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},
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
	{
		"rcarriga/nvim-notify",
		opts = {
			timeout = 3000,
			-- background_colour = "#000000",
			render = "wrapped-compact",
			stages = "fade",
			fps = 120,
		},
	},
	{ "windwp/nvim-autopairs", event = "InsertEnter", config = true },
	{ "numToStr/Comment.nvim" },
	{ "echasnovski/mini.hipatterns", event = "BufReadPre", opts = {} },
	{ "smjonas/inc-rename.nvim" },
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {},
	},
}
