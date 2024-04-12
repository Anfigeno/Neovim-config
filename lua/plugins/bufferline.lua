return {
	"akinsho/bufferline.nvim",
	after = "catppuccin",
	config = function()
		require("bufferline").setup({
			options = {
				indicator = {
					icon = "┃",
				},
				offsets = {
					{
						filetype = "NvimTree",
						text = "NvimTree",
						highlight = "Operator",
						separator = true,
					},
				},
				diagnostics = "nvim_lsp",
				diagnostics_indicator = function(count, level, diagnostics_dict, context)
					local s = " "
					for e, n in pairs(diagnostics_dict) do
						local sym = e == "error" and " " or (e == "warning" and " " or " ")
						s = s .. n .. sym
					end
					return s
				end,
			},
			highlights = require("catppuccin.groups.integrations.bufferline").get(),
		})

		vim.keymap.set("n", "<tab>", "<cmd>BufferLineCycleNext<cr>")
		vim.keymap.set("n", "<s-tab>", "<cmd>BufferLineCyclePrev<cr>")
		vim.keymap.set("n", "<space>x", "<cmd>bw<cr>")
	end,
}
