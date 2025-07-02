return {
	{ "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-cmdline" },
    { "hrsh7th/nvim-cmp" },

    { "L3MON4D3/LuaSnip", build = "make install_jsregexp" },
    { "saadparwaiz1/cmp_luasnip" },

    { "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } }, -- dap
    { "mfussenegger/nvim-lint" }, -- lint
    { "mhartington/formatter.nvim" }, -- formatter
}
