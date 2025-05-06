-- Status line
return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		--local onedark = require('lualine.themes.onedark')

		-- Custom darker color
		--  local darker_gray = '#24262C'

		--  local custom_onedark = vim.tbl_deep_extend("force", onedark, {
		--    normal = { c = { bg = darker_gray } },
		--    insert = { c = { bg = darker_gray } },
		--    visual = { c = { bg = darker_gray } },
		--    replace = { c = { bg = darker_gray } },
		--    command = { c = { bg = darker_gray } },
		--  })

		--  require("lualine").setup({
		--    options = {
		--      theme = custom_onedark
		--    },
		--  })
		--end

		require("lualine").setup({
			sections = {
				lualine_x = { "aerial" },
			},
			options = {
				theme = "tokyonight",
				disabled_filetypes = { "NvimTree", "aerial" },
				-- extensions = {'nvim-tree'}
			},
		})

		-- require('lualine').setup({
		--   options = {
		--       theme = 'vscode',
		--   }
		-- })
	end,
}
