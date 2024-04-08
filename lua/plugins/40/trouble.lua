return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("trouble").setup({
			use_diagnostic_signs = true,
		})

		vim.keymap.set("n", "gG", "<cmd>TroubleToggle workspace_diagnostics<cr>", { silent = true, noremap = true })
		vim.keymap.set("n", "gF", "<cmd>TroubleToggle document_diagnostics<cr>", { silent = true, noremap = true })
		vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", { silent = true, noremap = true })
	end,
}
