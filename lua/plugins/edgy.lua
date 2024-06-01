return {
	"folke/edgy.nvim",
	event = "VeryLazy",
	config = function()
		local edgy = require("edgy")

		edgy.setup({
			left = {
				{
					title = "Neo-Tree Git",
					ft = "neo-tree",
					filter = function(buf)
						return vim.b[buf].neo_tree_source == "git_status"
					end,
					pinned = true,
					open = "Neotree position=right git_status",
				},
				{
					title = "Neo-Tree",
					ft = "neo-tree",
					filter = function(buf)
						return vim.b[buf].neo_tree_source == "filesystem"
					end,
					size = { height = 0.5, width = 0.2 },
					pinned = true,
					open = "Neotree toggle focus",
				},
			},
			right = {
				{
					title = "Simbolos",
					ft = "Outline",
					size = { width = 0.2 },
					open = "Outline",
					pinned = true,
				},
				{
					title = "Diagnosticos",
					ft = "neo-tree",
					size = { width = 0.2 },
					open = "Neotree position=right diagnostics",
					pinned = true,
				},
			},
			bottom = {
				{
					title = "Toggle Terminal",
					ft = "toggleterm",
					filter = function()
						return vim.bo.filetype == "toggleterm"
					end,
					size = { height = 0.4 },
					open = "ToggleTerm direction=horizontal",
					pinned = true,
				},
			},
		})

		vim.keymap.set("n", "<c-b>", function()
			edgy.toggle("left")
		end)

		vim.keymap.set("n", "<c-l>", function()
			edgy.toggle("right")
		end)
	end,
}
