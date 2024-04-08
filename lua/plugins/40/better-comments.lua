return {
	"Djancyp/better-comments.nvim",
	config = function()
		local colors = require("catppuccin.palettes").get_palette("mocha")
		require("better-comment").Setup({
			tags = {
				{
					name = "PENDIENTE",
					fg = colors.surface1,
					bg = colors.blue,
					bold = true,
					virtual_text = "",
				},
				{
					name = "ARREGLAR",
					fg = colors.surface1,
					bg = colors.red,
					bold = true,
					virtual_text = "",
				},
				{
					name = "ADVERTENCIA",
					fg = colors.surface1,
					bg = colors.yellow,
					bold = true,
					virtual_text = "",
				},
			},
		})
	end,
}
