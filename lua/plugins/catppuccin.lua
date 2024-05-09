return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	lazy = false,
	config = function()
		require("catppuccin").setup({
			color_overrides = {
				mocha = {
					base = "#222430",
					mantle = "#191b24",
					crust = "#111218",

					red = "#ff5263",
					maroon = "#ff7d81",
					mauve = "#e882ff",
					flamingo = "#e4adff",
					rosewater = "#e4adff",
					pink = "#e4adff",
					blue = "#8B93FF",
					lavender = "#8bb6ff",
					sky = "#6ae4fc",
					green = "#8eeda1",
					lima = "#bfed8e",
					yellow = "#ffe780",
					peach = "#fc9b74",
					text = "#c3c5d5",
				},
			},
			integrations = {
				neotree = true,
				treesitter = true,
				noice = true,
				notify = true,
				telescope = true,
				cmp = true,
				gitsigns = true,
				lsp_trouble = true,
			},
			styles = {
				comments = { "italic" },
				keywords = { "italic" },
				strings = { "italic" },
				variables = { "bold" },
			},
			custom_highlights = function(colors)
				return {
					["@tag"] = { fg = colors.red },
					["@tag.attribute"] = { fg = colors.peach },
					["@tag.delimiter"] = { fg = colors.subtext0 },
					Operator = { fg = colors.red },
					-- Keyword = { fg = colors.red },
					-- Function = { fg = colors.green },
					-- Conditional = { fg = colors.blue },
					-- Include = { fg = colors.sky },
					-- Type = { fg = colors.blue },

					BufferLineFill = { bg = colors.base },

					NoiceCmdlinePopupBorder = { fg = colors.red },
					NoiceCmdlinePopupTitle = { fg = colors.red, bg = colors.base },

					TelescopeTitle = { fg = colors.red, bg = colors.base },

					FloatBorder = { fg = colors.red, bg = colors.base },
					FloatTitle = { fg = colors.red, bg = colors.base },

					NeoTreeNormal = { fg = colors.text, bg = colors.base },
					NeoTreeNormalNC = { fg = colors.text, bg = colors.base },
					NeoTreeDirectoryIcon = { fg = colors.maroon, bg = colors.base },
					NeoTreeDirectoryName = { fg = colors.maroon, bg = colors.base },
					NeoTreeRootName = { fg = colors.maroon, bg = colors.base },

					StatusLine = { fg = colors.red, bg = colors.base },
					StatusLineNC = { fg = colors.red, bg = colors.base },

					TroubleError = { fg = colors.red },
					TroubleWarning = { fg = colors.yellow },
					TroubleInformation = { fg = colors.blue },
					TroubleHint = { fg = colors.green },
					TroubleTextError = { fg = colors.red },
					TroubleTextWarning = { fg = colors.yellow },
					TroubleTextInformation = { fg = colors.blue },
					TroubleTextHint = { fg = colors.green },
					TroubleNormal = { fg = colors.text, bg = colors.base },

					PmenuSel = { bg = colors.base, fg = "NONE" },
					Pmenu = { fg = colors.overlay0, bg = colors.mantle },

					CmpItemAbbrDeprecated = { fg = colors.surface2, bg = "NONE", strikethrough = true },
					CmpItemAbbrMatch = { fg = colors.red, bg = "NONE", bold = true },
					CmpItemAbbrMatchFuzzy = { fg = colors.red, bg = "NONE", bold = true },
					CmpItemMenu = { fg = colors.red, bg = "NONE", italic = true },

					CmpItemKindField = { fg = colors.surface1, bg = colors.red },
					CmpItemKindProperty = { fg = colors.surface1, bg = colors.red },
					CmpItemKindEvent = { fg = colors.surface1, bg = colors.red },

					CmpItemKindText = { fg = colors.surface1, bg = colors.green },
					CmpItemKindEnum = { fg = colors.surface1, bg = colors.green },
					CmpItemKindKeyword = { fg = colors.surface1, bg = colors.green },

					CmpItemKindConstant = { fg = colors.surface1, bg = colors.yellow },
					CmpItemKindConstructor = { fg = colors.surface1, bg = colors.yellow },
					CmpItemKindReference = { fg = colors.surface1, bg = colors.yellow },

					CmpItemKindFunction = { fg = colors.surface1, bg = colors.blue },
					CmpItemKindStruct = { fg = colors.surface1, bg = colors.blue },
					CmpItemKindClass = { fg = colors.surface1, bg = colors.blue },
					CmpItemKindModule = { fg = colors.surface1, bg = colors.blue },
					CmpItemKindOperator = { fg = colors.surface1, bg = colors.blue },

					CmpItemKindVariable = { fg = colors.surface1, bg = colors.maroon },
					CmpItemKindFile = { fg = colors.surface1, bg = colors.maroon },

					CmpItemKindUnit = { fg = colors.surface1, bg = colors.mauve },
					CmpItemKindSnippet = { fg = colors.surface1, bg = colors.mauve },
					CmpItemKindFolder = { fg = colors.surface1, bg = colors.mauve },

					CmpItemKindMethod = { fg = colors.surface1, bg = colors.teal },
					CmpItemKindValue = { fg = colors.surface1, bg = colors.teal },
					CmpItemKindEnumMember = { fg = colors.surface1, bg = colors.teal },

					CmpItemKindInterface = { fg = colors.surface1, bg = colors.pink },
					CmpItemKindColor = { fg = colors.surface1, bg = colors.pink },
					CmpItemKindTypeParameter = { fg = colors.surface1, bg = colors.pink },

					CmpItemKindCodeium = { fg = colors.surface1, bg = colors.rosewater },

					NavBuddyNormalFloat = { fg = colors.text, bg = colors.base },

					NavBuddyField = { fg = colors.red },
					NavBuddyProperty = { fg = colors.red },
					NavBuddyEvent = { fg = colors.red },

					NavBuddyText = { fg = colors.green },
					NavBuddyEnum = { fg = colors.green },
					NavBuddyKeyword = { fg = colors.green },

					NavBuddyConstant = { fg = colors.yellow },
					NavBuddyConstructor = { fg = colors.yellow },
					NavBuddyReference = { fg = colors.yellow },

					NavBuddyFunction = { fg = colors.blue, bg = "NONE", bold = true },
					NavBuddyClass = { fg = colors.blue, bg = "NONE", bold = true },
					NavBuddyModule = { fg = colors.blue, bg = "NONE", bold = true },
					NavBuddyOperator = { fg = colors.blue, bg = "NONE", bold = true },

					NavBuddyVariable = { fg = colors.maroon },
					NavBuddyFile = { fg = colors.maroon },

					NavBuddyMethod = { fg = colors.teal },
					NavBuddyValue = { fg = colors.teal },
					NavBuddyEnumMember = { fg = colors.teal },

					NavBuddyInterface = { fg = colors.pink },
				}
			end,
		})
	end,
}
