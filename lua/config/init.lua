require("config.lazy")
require("config.theme")
require("config.treesitter")
require("config.tree")
require("config.lsp")
require("config.dlf")
require("config.toggleterm")
-- require("config.barbar")
require("config.harpoon")
require("config.comments")
require("config.notify")
require("config.telescope")

vim.wo.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.termguicolors = true
vim.opt.scrolloff = 8


vim.keymap.set("n", "<C-j>", ":resize +2 <CR>")
vim.keymap.set("n", "<C-k>", ":resize -2 <CR>")
vim.keymap.set("n", "<C-h>", ":vertical resize -2 <CR>")
vim.keymap.set("n", "<C-l>", ":vertical resize +2 <CR>")
