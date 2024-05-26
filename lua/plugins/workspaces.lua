return {
	"natecraddock/workspaces.nvim",
	after = "telescope",
	config = function()
		require("workspaces").setup({
			hooks = {
				open = { "Neotree toggle" },
			},
		})

		local telescope = require("telescope")
		telescope.load_extension("workspaces")

		vim.keymap.set("n", "<space>fw", "<cmd>Telescope workspaces<cr>", {})
	end,
}
