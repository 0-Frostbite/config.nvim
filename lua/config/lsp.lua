require("mason").setup({
	ui = {
		icons = {
			package_installed = "O",
			package_pending = "--",
			package_uninstalled = "X",
		},
	},
})

require("mason-lspconfig").setup()

local cmp = require("cmp")
cmp.setup({
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	window = {},
	mapping = cmp.mapping.preset.insert({
		["<S-q>"] = cmp.mapping.select_prev_item(),
		["<S-e>"] = cmp.mapping.select_next_item(),
		["<S-b>"] = cmp.mapping.scroll_docs(-4),
		["<S-f>"] = cmp.mapping.scroll_docs(4),
		["<S-Space>"] = cmp.mapping.complete(),
		["<S-x>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	}),
	sources = cmp.config.sources({
		{ name = "luasnip", option = { use_show_condition = false, show_auto_snippets = true } },
		{ name = "nvim_lsp" },
	}, {
		{ name = "buffer" },
	}),
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
require("lspconfig").ruff.setup({
	capabilities = capabilities,
})
require("lspconfig").basedpyright.setup({
	capabilities = capabilities,
})
require("lspconfig").clangd.setup({
	capabilities = capabilities,
})
require("lspconfig").cssls.setup({
	capabilities = capabilities,
})
require("lspconfig").css_variables.setup({
	capabilities = capabilities,
})
require("lspconfig").html.setup({
	capabilities = capabilities,
})
