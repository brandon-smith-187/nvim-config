return {
	"hiphish/rainbow-delimiters.nvim",
	enabled = true,
	submodules = false,
	opts = {
		strategy = {
			[""] = "rainbow-delimiters.strategy.global",
			vim = "rainbow-delimiters.strategy.local",
		},
		query = {
			[""] = "rainbow-delimiters",
			lua = "rainbow-blocks",
		},
		priority = {
			[""] = 110,
			lua = 210,
		},
		highlight = {
			"RainbowDelimiterRed",
			"RainbowDelimiterYellow",
			"RainbowDelimiterBlue",
			"RainbowDelimiterOrange",
			"RainbowDelimiterGreen",
			"RainbowDelimiterViolet",
			"RainbowDelimiterCyan",
		},
	},
	main = "rainbow-delimiters.setup",
	-- Optional dependencies
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
}
