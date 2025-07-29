return {
	{ "sainnhe/gruvbox-material" },
	{ "Mofiqul/vscode.nvim" },
	{ "techygrrrl/techygrrrl-cmyk-colourrrs-neovim" },
	{ "catppuccin/nvim", name = "catppuccin" },
	{ "kevinm6/kurayami.nvim" },
	{ "scottmckendry/cyberdream.nvim" },
	{ "maxmx03/fluoromachine.nvim" },
	{
		"0-Frostbite/miasma.nvim",
		config = function()
			-- Optional
			vim.g.miasma_transparent = 1 -- Enable transparency
			-- vim.cmd("colorscheme miasma")
		end,
	},
	{ "Shadorain/shadotheme" },
}
