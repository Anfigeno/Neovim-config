vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.showcmd = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.clipboard = "unnamedplus"
vim.opt.relativenumber = true

vim.keymap.set("n", "<c-s>", "<cmd>Neoformat<cr><cmd>w<cr>")
vim.cmd.colorscheme("mestizo")
