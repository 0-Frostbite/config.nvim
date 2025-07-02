require("config.lazy")
require("config.theme")
require("config.treesitter")
require("config.tree")
require("config.ufo")
require("config.mason")
require("config.lsp")
require("config.debug")
require("config.lint")
require("config.format")
require("config.toggleterm")
-- require("config.barbar")
require("config.harpoon")
require("config.telescope")
require("config.hipatterns")
require("config.inc-rename")
require("config.refactoring")
require("config.themery")
require("config.noice")

vim.wo.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.cmdheight = 0
vim.opt.showcmd = false
vim.opt.termguicolors = true
vim.opt.scrolloff = 10
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.hlsearch = true

vim.keymap.set("n", "<M-j>", ":resize +2 <CR>")
vim.keymap.set("n", "<M-k>", ":resize -2 <CR>")

vim.keymap.set("n", "<M-h>", ":vertical resize -2 <CR>")
vim.keymap.set("n", "<M-l>", ":vertical resize +2 <CR>")

vim.keymap.set("n", "<C-s>s", ":split <CR>")
vim.keymap.set("n", "<C-s>v", ":vsplit <CR>")

vim.api.nvim_create_user_command(
    "Keymap",
    function()
	    vim.api.nvim_command("e ~/.config/nvim/SelfNotes.md")
    end,
    { nargs = 0 })
