return {
	"akinsho/bufferline.nvim",
	lazy = false,
	version = "*",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local bufferline = require("bufferline")
		bufferline.setup({
			options = {
				themable = true,
				separator_style = "|",
				persist_buffer_sort = true,
				hover = {
					enabled = true,
					delay = 200,
					reveal = { "close" },
				},
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						highlight = "Directory",
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

		local map = vim.keymap.set
		local opts = { noremap = true, silent = true }

		map("n", "<A-Left>", "<cmd>BufferLineCyclePrev<cr>", opts)
		map("n", "<A-Right>", "<cmd>BufferLineCycleNext<cr>", opts)
		map("n", "<A-h>", "<cmd>BufferLineCyclePrev<cr>", opts)
		map("n", "<A-l>", "<cmd>BufferLineCycleNext<cr>", opts)
	end,
}
