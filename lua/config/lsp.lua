local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").ruff.setup({ capabilities = capabilities })
require("lspconfig").basedpyright.setup({ capabilities = capabilities })
require("lspconfig").clangd.setup({ capabilities = capabilities })
require("lspconfig").cssls.setup({ capabilities = capabilities })
require("lspconfig").css_variables.setup({ capabilities = capabilities })
require("lspconfig").html.setup({ capabilities = capabilities })
require("lspconfig").ts_ls.setup({ capabilities = capabilities })
