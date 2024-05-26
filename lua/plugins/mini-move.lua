return {
	"echasnovski/mini.move",
	version = false,
	config = function()
		require("mini.move").setup({
			mappings = {
				left = "<M-h>",
				down = "<M-j>",
				up = "<M-k>",
				right = "<M-l>",

				line_left = "<M-h>",
				line_down = "<M-j>",
				line_up = "<M-k>",
				line_right = "<M-l>",
			},
			options = {
				reindent_linewise = true,
			},
		})
	end,
}
