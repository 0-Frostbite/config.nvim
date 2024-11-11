vim.o.background = "dark"
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })

function color(theme, trans)
	if theme == "cyberdream" then
		require("cyberdream").setup({
			transparent = trans,
			italic_comments = true,
			hide_fillchars = false,
			borderless_telescope = false,
			extensions = {
				telescope = true,
				notify = true,
			},
		})
		require("lualine").setup({
			options = { theme = "auto" },
		})
		vim.cmd.colorscheme(theme)

	elseif theme == "vscode" then
		require("vscode").setup({
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
			-- auto, ayu_dark, ayu_mirage, horizon, seoul256,
		})
		vim.cmd.colorscheme(theme)
	end
end

v = "vscode" --$
g = "gruvbox-material" --$

color(g)
