return {
	"navarasu/onedark.nvim",
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		require("onedark").setup({
			style = "warmer",
			colors = {
				orange = "#ff8800", -- define a new color
				green = "#4dfb00", -- redefine an existing color
				fg = "#ffffff",
				yellow = "#ffee00",
			},
			highlights = {
				-- 	["@lsp.type.keyword"] = { fg = "$green" },
				["@lsp.type.property"] = { fg = "$orange", fmt = "bold" },
				-- 	["@function"] = { fg = "#00deff", fmt = "underline,italic" },
				-- 	["@method"] = { link = "@function" },
				-- 	-- ["@variable"] = { fg = "#ffff00"},
				["@variable"] = { fg = "#ffffff", fmt = "bold" },
				["@type.builtin"] = { fg = "$orange", fmt = "bold" },
				["@keyword.repeat"] = { fg = "$purple", fmt = "bold" },
				["@keyword"] = { fg = "$purple", fmt = "bold" },
				["@keyword.import"] = { fg = "$purple", fmt = "bold" },
				["@keyword.function"] = { fg = "$purple", fmt = "bold" },
				["@keyword.operator"] = { fg = "$yellow", fmt = "bold" },
				["@operator"] = { fg = "$yellow", fmt = "bold" },
				-- 	-- To add language specific config
				-- 	-- ["@lsp.type.variable.go"] = { fg = "none" },
			},
		})
		-- Enable theme
		require("onedark").load()
	end,
}
