return {
	"mvllow/modes.nvim",
	config = function()
		local colores = require("mestizo").paleta()
		require("modes").setup({
			colors = {
				copy = colores.amarillo,
				delete = colores.rojo,
				insert = colores.azul,
				visual = colores.magenta,
			},
			line_opacity = 0.20,
			set_cursor = true,
			set_cursorline = true,
			set_number = true,
			ignore_filetypes = { "NvimTree", "TelescopePrompt" },
		})
	end,
}
