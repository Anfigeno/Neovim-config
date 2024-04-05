return {
	"shellRaining/hlchunk.nvim",
	config = function()
		require("hlchunk").setup({
			indent = {
				enable = false,
			},
			blank = {
				enable = false,
			},
		})
	end,
}
