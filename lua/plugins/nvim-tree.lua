return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local nvim_tree = require("nvim-tree")
		local api = require("nvim-tree.api")

		nvim_tree.setup({
			sync_root_with_cwd = true,
			respect_buf_cwd = true,
			update_focused_file = {
				enable = true,
				update_cwd = true,
				update_root = true,
			},
			hijack_directories = {
				enable = false,
				auto_open = false,
			},
		})

		vim.keymap.set("n", "<F3>", function()
			api.tree.toggle({ find_file = true, update_root = true, focus = false })
		end, { noremap = true, silent = true })

		-- vim.keymap.set("n", "<C-t>", function()
		--   api.tree.toggle({ find_file = true, update_root = true, focus = true })
		-- end, { noremap = true, silent = true })

		-- vim.keymap.set("n", "t", api.node.open.tab, { noremap = true, silent = true })
	end,
}
