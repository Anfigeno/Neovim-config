return {
	"williamboman/mason-lspconfig.nvim",
	config = function()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"phpactor",
				"intelephense",
				"cssls",
				"pyright",
				"gopls",
				"rust_analyzer",
				"emmet_ls",
				"tsserver",
				"prismals",
				"jdtls",
			},
		})
	end,
}
