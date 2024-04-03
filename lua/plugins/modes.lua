return {
	"mvllow/modes.nvim",
	config = function()
		require("modes").setup({
			colors = {
				copy = "#f9e2af",
				delete = "#f38ba8",
				insert = "#89b4fa",
				visual = "#cba6f7",
			},
			line_opacity = 0.20,
			set_cursor = true,
			set_cursorline = true,
			set_number = true,
			ignore_filetypes = { "NvimTree", "TelescopePrompt" },
		})
	end,
}
