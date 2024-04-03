vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.showcmd = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.clipboard = "unnamedplus"
vim.opt.laststatus = 0

if vim.g.neovide then
	vim.opt.guifont = "Monaspace Neon:h10"
	vim.g.terminal_color_0 = "#45475A"
	vim.g.terminal_color_1 = "#F38BA8"
	vim.g.terminal_color_2 = "#A6E3A1"
	vim.g.terminal_color_3 = "#F9E2AF"
	vim.g.terminal_color_4 = "#89B4FA"
	vim.g.terminal_color_5 = "#F5C2E7"
	vim.g.terminal_color_6 = "#94E2D5"
	vim.g.terminal_color_7 = "#BAC2DE"
	vim.g.terminal_color_8 = "#585B70"
	vim.g.terminal_color_9 = "#F38BA8"
	vim.g.terminal_color_10 = "#A6E3A1"
	vim.g.terminal_color_11 = "#F9E2AF"
	vim.g.terminal_color_12 = "#89B4FA"
	vim.g.terminal_color_13 = "#F5C2E7"
	vim.g.terminal_color_14 = "#94E2D5"
	vim.g.terminal_color_15 = "#F5F7FA"
end

vim.keymap.set("n", "<c-s>", "<cmd>Neoformat<cr><cmd>w<cr>")
vim.cmd.colorscheme("catppuccin-mocha")
