return {
	"nvimdev/dashboard-nvim",
	config = function()
		require("dashboard").setup({
			theme = "doom",
			config = {
				header = {
					"",
					"",
					"",
					"                                                                       ",
					"                                                                     ",
					"       ████ ██████           █████      ██                     ",
					"      ███████████             █████                             ",
					"      █████████ ███████████████████ ███   ███████████   ",
					"     █████████  ███    █████████████ █████ ██████████████   ",
					"    █████████ ██████████ █████████ █████ █████ ████ █████   ",
					"  ███████████ ███    ███ █████████ █████ █████ ████ █████  ",
					" ██████  █████████████████████ ████ █████ █████ ████ ██████ ",
					"",
				},
				center = {
					{
						desc = "[  Anfigeno ] [ 󰑍 Anfigeno ] [ 󰗃 anfigenos ]",
					},
				},
			},
		})
	end,
}
