vim.o.background = "dark"

function theme(theme, trans)
	-- if theme == v then
	require(theme).setup({
		transparent = trans,
		italic_comments = true,
		disable_nvimtree_bg = true,
		borderless_telescope = true,
		terminal_colors = true,
	})
	require("lualine").setup({
		options = { theme = "auto" },
	})
	vim.cmd.colorscheme(theme)
	-- else
	-- end
end

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })

v = "vscode" --$
g = "gruvbox-material" --$
m = "miasma"
c = "cyberdream"
f = "fluoromachine"
k = "kurayami"
y = "cmyk-colourrrs"

