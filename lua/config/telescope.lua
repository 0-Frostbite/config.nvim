local actions = require("telescope.actions")

require("telescope").setup({
	defaults = {
		mappings = {
			i = {

				["<C-k>"] = actions.move_selection_next,
				["<C-j>"] = actions.move_selection_previous,

				["<CR>"] = actions.select_default,
				["<C-s>s"] = actions.select_horizontal,
				["<C-s>v"] = actions.select_vertical,
				["<C-t>"] = actions.select_tab,

				["<M-k>"] = actions.preview_scrolling_up,
				["<M-j>"] = actions.preview_scrolling_down,
				["<M-h>"] = actions.preview_scrolling_left,
				["<M-l>"] = actions.preview_scrolling_right,

			},
			n = {

				["<CR>"] = actions.select_default,
				["<C-s>"] = actions.select_horizontal,
				["<C-v>"] = actions.select_vertical,
				["<C-t>"] = actions.select_tab,

				["<M-k>"] = actions.preview_scrolling_up,
				["<M-j>"] = actions.preview_scrolling_down,
				["<M-h>"] = actions.preview_scrolling_left,
				["<M-l>"] = actions.preview_scrolling_right,

			},
		},
	},
})
require("telescope").load_extension("fzf")

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fs", builtin.current_buffer_fuzzy_find, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
