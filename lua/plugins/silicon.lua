return {
	"michaelrommel/nvim-silicon",
	lazy = true,
	cmd = "Silicon",
	config = function()
		require("silicon").setup({
			theme = "Mestizo",
			font = "Monaspace Neon Medium=40",
			num_separator = " ",
			line_pad = 8,
			pad_horiz = 10,
			pad_vert = 10,
			background = "#00000000",
			shadow_blur_radius = 0,
			to_clipboard = true,
			window_title = function()
				return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), ":t")
			end,
			output = function()
				return os.getenv("HOME") .. "/Imágenes/Capturas/" .. os.date("%d-%m-%Y_%H-%M") .. ".png"
			end,
		})
	end,
}
