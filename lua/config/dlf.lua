------------DEBUGGER-------------------

require("dapui").setup()

local dap, dapui = require("dap"), require("dapui")

dap.listeners.before.attach.dapui_config = function()
	dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
	dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
	dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
	dapui.close()
end

dap.configurations.python = {
	{
		type = "python",
		request = "launch",
		name = "Launch file",
		program = "${file}",
		pythonPath = function()
			return "/usr/bin/python"
		end,
	},
}

-- vim.keymap.set("n","<leader><C-d>",dapui.close, {})
vim.keymap.set("n", "<C-b>", dapui.toggle, {})

------------LINTER---------------------

local lint = require("lint")
lint.linters_by_ft = {
	python = { "ruff" },
	c = { "cpplint" },
	cpp = { "cpplint" },
}

-- vim.keymap.set("n","<leader>l",print("linting"), {})
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	callback = function()
		require("lint").try_lint()
	end,
})

------------FORMATTER------------------

local util = require("formatter.util")

require("formatter").setup({
	logging = true,
	log_level = vim.log.levels.WARN,
	filetype = {
		lua = { require("formatter.filetypes.lua").stylua },
		python = { require("formatter.filetypes.python").ruff },
		cpp = { require("formatter.filetypes.cpp").clang_format },
		c = { require("formatter.filetypes.c").clang_format },
		["*"] = { require("formatter.filetypes.any").remove_trailing_whitespace },
	},
})

vim.keymap.set("n", "<leader>fw", vim.cmd.FormatWrite)
