return {
	"williamboman/mason-lspconfig.nvim",
	config = function()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"sqlls",
				"svelte",
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
				"docker_compose_language_service",
				"dockerls",
			},
		})
	end,
}
