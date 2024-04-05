return {
	"SmiteshP/nvim-navbuddy",
	dependencies = {
		"SmiteshP/nvim-navic",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("nvim-navbuddy").setup({
			lsp = {
				auto_attach = true,
			},
		})

		vim.keymap.set("n", "gD", "<cmd>Navbuddy<cr>")
	end,
}
