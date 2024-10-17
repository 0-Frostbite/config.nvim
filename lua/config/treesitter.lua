require("nvim-treesitter.configs").setup{
    ensure_installed = {  },
    highlight = { enable = true },
    indent = { enable = true },
}
-- vim.wo.foldmethod = "expr"
-- vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
