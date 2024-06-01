return {
	"hedyhli/outline.nvim",
	config = function()
		require("outline").setup({
			symbols = {
				icon_source = "lspkind",
			},
		})
	end,
}
