vim.o.background = "dark"

function color(theme, trans)
    if theme == v then
		require(v).setup({
			transparent = trans,
			italic_comments = true,
			disable_nvimtree_bg = true,
		})
	    require("lualine").setup({
		    options = { theme = "auto" },
	    })
	    vim.cmd.colorscheme(theme)
    else
	    require("lualine").setup({
		    options = { theme = "auto" },
	    })
	    vim.cmd.colorscheme(theme)
    end
end

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })

v = "vscode" --$
g = "gruvbox-material" --$

color(g)
