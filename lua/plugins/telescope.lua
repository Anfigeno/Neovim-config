return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local telescope = require("telescope.builtin")
		vim.keymap.set("n", "<space>ff", telescope.find_files, {})
		vim.keymap.set("n", "<space>fg", telescope.live_grep, {})
		vim.keymap.set("n", "<space>fb", telescope.buffers, {})
		vim.keymap.set("n", "<space>fh", telescope.diagnostics, {})

		require("telescope").setup({
			pickers = {
				find_files = {
					theme = "dropdown",
				},
				live_grep = {
					theme = "dropdown",
				},
				buffers = {
					theme = "dropdown",
				},
				help_tags = {
					theme = "dropdown",
				},
			},
			defaults = {
				prompt_prefix = "󰼛 ",

				selection_caret = "󱞩 ",
			},
		})
	end,
}
