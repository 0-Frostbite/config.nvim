local util = require("formatter.util")

require("formatter").setup({
	logging = true,
	log_level = vim.log.levels.ERROR,
	filetype = {
		lua = { require("formatter.filetypes.lua").stylua },
		python = { require("formatter.filetypes.python").ruff },
		c = { require("formatter.filetypes.c").clang_format },
		cpp = { require("formatter.filetypes.cpp").clang_format },
		css = { require("formatter.filetypes.css").prettierd },
		html = { require("formatter.filetypes.html").prettierd },
		javascript = { require("formatter.filetypes.javascript").prettierd },
		typescript = { require("formatter.filetypes.typescript").prettierd },
		["*"] = { require("formatter.filetypes.any").remove_trailing_whitespace },
	},
})

vim.keymap.set("n", "<leader>fw", vim.cmd.FormatWrite)
