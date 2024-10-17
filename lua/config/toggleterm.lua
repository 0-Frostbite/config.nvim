require("toggleterm").setup({
	autochdir = true,
})
vim.keymap.set("n", "<leader>t", vim.cmd.ToggleTerm)
