return {
	"Djancyp/better-comments.nvim",
	config = function()
		local colores = require("mestizo").paleta()
		require("better-comment").Setup({
			tags = {
				{
					name = "PENDIENTE",
					fg = colores.vacio,
					bg = colores.turquesa,
					bold = true,
					virtual_text = "",
				},
				{
					name = "ARREGLAR",
					fg = colores.vacio,
					bg = colores.rojo,
					bold = true,
					virtual_text = "",
				},
				{
					name = "ADVERTENCIA",
					fg = colores.vacio,
					bg = colores.amarillo,
					bold = true,
					virtual_text = "",
				},
			},
		})
	end,
}
