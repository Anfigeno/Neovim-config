return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	lazy = false,
	config = function()
		require("catppuccin").setup({
			integrations = {
				neotree = true,
				treesitter = true,
				noice = true,
				notify = true,
				telescope = true,
				cmp = true,
			},
			custom_highlights = function(colors)
				return {
					["@tag"] = { fg = colors.red },
					["@tag.attribute"] = { fg = colors.peach },
					["@tag.delimiter"] = { fg = colors.subtext0 },
					Operator = { fg = colors.red },

					PmenuSel = { bg = colors.base, fg = "NONE" },
					Pmenu = { fg = colors.overlay0, bg = colors.mantle },

					CmpItemAbbrDeprecated = { fg = colors.surface2, bg = "NONE", strikethrough = true },
					CmpItemAbbrMatch = { fg = colors.mauve, bg = "NONE", bold = true },
					CmpItemAbbrMatchFuzzy = { fg = colors.mauve, bg = "NONE", bold = true },
					CmpItemMenu = { fg = colors.mauve, bg = "NONE", italic = true },

					CmpItemKindField = { fg = colors.surface1, bg = colors.red },
					CmpItemKindProperty = { fg = colors.surface1, bg = colors.red },
					CmpItemKindEvent = { fg = colors.surface1, bg = colors.red },

					CmpItemKindText = { fg = colors.surface1, bg = colors.green },
					CmpItemKindEnum = { fg = colors.surface1, bg = colors.green },
					CmpItemKindKeyword = { fg = colors.surface1, bg = colors.green },

					CmpItemKindConstant = { fg = colors.surface1, bg = colors.yellow },
					CmpItemKindConstructor = { fg = colors.surface1, bg = colors.yellow },
					CmpItemKindReference = { fg = colors.surface1, bg = colors.yellow },

					CmpItemKindFunction = { fg = colors.base, bg = colors.blue },
					CmpItemKindStruct = { fg = colors.base, bg = colors.blue },
					CmpItemKindClass = { fg = colors.base, bg = colors.blue },
					CmpItemKindModule = { fg = colors.base, bg = colors.blue },
					CmpItemKindOperator = { fg = colors.base, bg = colors.blue },

					CmpItemKindVariable = { fg = colors.base, bg = colors.maroon },
					CmpItemKindFile = { fg = colors.base, bg = colors.maroon },

					CmpItemKindUnit = { fg = colors.base, bg = colors.mauve },
					CmpItemKindSnippet = { fg = colors.base, bg = colors.mauve },
					CmpItemKindFolder = { fg = colors.base, bg = colors.mauve },

					CmpItemKindMethod = { fg = colors.surface1, bg = colors.teal },
					CmpItemKindValue = { fg = colors.surface1, bg = colors.teal },
					CmpItemKindEnumMember = { fg = colors.surface1, bg = colors.teal },

					CmpItemKindInterface = { fg = colors.surface1, bg = colors.pink },
					CmpItemKindColor = { fg = colors.surface1, bg = colors.pink },
					CmpItemKindTypeParameter = { fg = colors.surface1, bg = colors.pink },
				}
			end,
		})
	end,
}
