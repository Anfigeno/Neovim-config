return {
	"sbdchd/neoformat",
	config = function()
		vim.keymap.set("n", "<s-f>", "<cmd>Neoformat<cr>")
	end,
}
