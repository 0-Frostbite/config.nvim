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
	vim.cmd.colorscheme(theme)
end

-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })

v = "vscode" --$
g = "gruvbox-material" --$
m = "miasma"
c = "cyberdream"
f = "fluoromachine"
k = "kurayami"
y = "cmyk-colourrrs"
p = "catppuccin"
