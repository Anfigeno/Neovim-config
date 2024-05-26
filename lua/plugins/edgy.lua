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
					title = "Neo-Tree Diagnostics",
					ft = "neo-tree",
					filter = function(buf)
						return vim.b[buf].neo_tree_source == "diagnostics"
					end,
					pinned = true,
					open = "Neotree position=bottom diagnostics",
				},
				{
					title = "Neo-Tree",
					ft = "neo-tree",
					filter = function(buf)
						return vim.b[buf].neo_tree_source == "filesystem"
					end,
					size = { height = 0.5 },
					pinned = true,
					open = "Neotree toggle focus",
				},
			},
			right = {
				{
					title = "Toggle Terminal",
					ft = "toggleterm",
					size = { width = 0.4 },
					open = "ToggleTerm direction=horizontal",
					pinned = true,
				},
			},
			bottom = {
				{
					title = "Outline",
					ft = "Outline",
					size = { width = 0.4 },
					open = "Outline",
					pinned = true,
				},
			},
		})

		vim.keymap.set("n", "<c-b>", function()
			edgy.toggle("left")
		end)

		vim.keymap.set("n", "<c-j>", function()
			edgy.toggle("bottom")
		end)
	end,
}
