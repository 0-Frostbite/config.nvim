vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = " "

require("nvim-tree").setup({
    sort = { sorter = "case_sensitive", },
    view = { width = 25, },
    renderer = { group_empty = true, },
    filters = { dotfiles = true, },
})

vim.keymap.set("n", "<leader><leader>", vim.cmd.NvimTreeToggle)
