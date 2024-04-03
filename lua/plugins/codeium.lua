return {
	"Exafunction/codeium.vim",
	config = function()
		vim.g.codeium_no_map_tab = true
		vim.keymap.set("i", "<m-tab>", function()
			return vim.fn["codeium#Accept"]()
		end, { expr = true, silent = true })
	end,
}
