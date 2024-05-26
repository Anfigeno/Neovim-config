return {
	"akinsho/bufferline.nvim",
	after = "mestizo",
	config = function()
		local function dividir_string(str, delimitador)
			local resultado = {}
			for match in (str .. delimitador):gmatch("(.-)" .. delimitador) do
				table.insert(resultado, match)
			end
			return resultado
		end

		local function obtener_nombre_directorio_activo()
			local ruta_completa = vim.fn.getcwd()
			local partes_ruta = dividir_string(ruta_completa, "/")

			return partes_ruta[#partes_ruta - 1]
		end

		require("bufferline").setup({
			options = {
				indicator = {
					icon = "┃",
				},
				offsets = {
					{
						filetype = "neo-tree",
						highlight = "Operator",
						separator = true,
					},
				},
				diagnostics = "nvim_lsp",
				diagnostics_indicator = function(count, level, diagnostics_dict, context)
					local s = " "
					for e, n in pairs(diagnostics_dict) do
						local sym = e == "error" and " " or (e == "warning" and " " or " ")
						s = s .. n .. sym
					end
					return s
				end,
			},
		})

		vim.keymap.set("n", "<tab>", "<cmd>BufferLineCycleNext<cr>")
		vim.keymap.set("n", "<s-tab>", "<cmd>BufferLineCyclePrev<cr>")
		vim.keymap.set("n", "<space>x", "<cmd>bw<cr>")
	end,
}
