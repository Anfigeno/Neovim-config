return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		"mrbjarksen/neo-tree-diagnostics.nvim",
	},
	config = function()
		require("neo-tree").setup({
			sources = {
				"filesystem",
				"buffers",
				"git_status",
				"diagnostics",
			},
			open_files_do_not_replace_types = { "terminal", "Trouble", "qf", "edgy" },
			popup_border_style = "rounded",
			hide_root_node = true,
			enable_git_status = true,
			enable_diagnostics = true,
			filesystem = {
				filtered_items = {
					visible = true,
					hide_dotfiles = false,
					hide_gitignored = false,
				},
			},
			event_handlers = {
				{
					event = "file_opened",
					handler = function(file_path)
						require("neo-tree.command").execute({ action = "close" })
					end,
				},
			},
		})
	end,
}
