return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		local colors = require("catppuccin.palettes").get_palette("mocha")

		require("toggleterm").setup({
			open_mapping = [[<c-k>]],
			highlights = {
				FloatBorder = {
					guibg = colors.base,
					guifg = colors.blue,
				},
			},
			float_opts = {
				border = "curved",
			},
			shade_terminals = false,
		})

		vim.keymap.set("n", "<c-l>s", "<cmd>ToggleTerm size=10 direction=horizontal<cr>")
		vim.keymap.set("n", "<c-l>v", "<cmd>ToggleTerm size=80 direction=vertical<cr>")
		vim.keymap.set("n", "<c-l>f", "<cmd>ToggleTerm direction=float<cr>")
	end,
}
