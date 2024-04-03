return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lsp = require("lspconfig")

			lsp.svelte.setup({ capabilities = capabilities })
			lsp.eslint.setup({ capabilities = capabilities, inlay_hints = { enabled = true } })
			lsp.lua_ls.setup({ capabilities = capabilities })
			lsp.phpactor.setup({ capabilities = capabilities })
			lsp.intelephense.setup({ capabilities = capabilities })
			lsp.cssls.setup({ capabilities = capabilities })
			lsp.jedi_language_server.setup({ capabilities = capabilities })
			lsp.rust_analyzer.setup({ capabilities = capabilities })
			lsp.astro.setup({ capabilities = capabilities })
			lsp.vuels.setup({ capabilities = capabilities })
			lsp.angularls.setup({ capabilities = capabilities })
			lsp.gopls.setup({ capabilities = capabilities })
			lsp.tsserver.setup({ capabilities = capabilities })
			lsp.prismals.setup({ capabilities = capabilities })
			lsp.emmet_ls.setup({
				capabilities = capabilities,
				filetypes = {
					"astro",
					"css",
					"eruby",
					"html",
					"htmldjango",
					"javascriptreact",
					"less",
					"pug",
					"sass",
					"scss",
					"svelte",
					"typescriptreact",
					"vue",
					"php",
					"blade",
				},
			})

			vim.o.updatetime = 250

			vim.api.nvim_create_autocmd("CursorHold", {
				buffer = bufnr,
				callback = function()
					local opts = {
						focusable = false,
						close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
						border = "rounded",
						source = "always",
						prefix = " ",
						scope = "cursor",
					}
					vim.diagnostic.open_float(nil, opts)
				end,
			})

			vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
			vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
			vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
			vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })
		end,
	},
}
