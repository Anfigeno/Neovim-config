return {
	"williamboman/mason-lspconfig.nvim",
	config = function()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"svelte",
				"eslint",
				"lua_ls",
				"phpactor",
				"intelephense",
				"cssls",
				"pyright",
				"gopls",
				"rust_analyzer",
				"astro",
				"vuels",
				"angularls",
				"emmet_ls",
				"tsserver",
				"prismals",
			},
		})
	end,
}
