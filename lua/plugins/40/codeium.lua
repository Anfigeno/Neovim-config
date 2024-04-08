return {
	"Exafunction/codeium.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
		"Exafunction/codeium.vim",
	},
	config = function()
		require("codeium").setup({
			enable_chat = true,
		})

		vim.g.codeium_no_map_tab = true
		vim.keymap.set("i", "<m-tab>", function()
			return vim.fn["codeium#Accept"]()
		end, { expr = true, silent = true })
	end,
}
