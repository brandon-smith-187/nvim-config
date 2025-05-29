return {
	"tpope/vim-surround", -- Surround plugin
	"tpope/vim-commentary", -- Commentary plugin
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
	{
		"vhyrro/luarocks.nvim",
		priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
		config = true,
	},
	{ "echasnovski/mini.nvim", version = false },
	-- { -- Adds git related signs to the gutter, as well as utilities for managing changes
	--   'lewis6991/gitsigns.nvim',
	--   opts = {
	--     signs = {
	--       add = { text = '+' },
	--       change = { text = '~' },
	--       delete = { text = '_' },
	--       topdelete = { text = '‾' },
	--       changedelete = { text = '~' },
	--     },
	--   },
	-- },
	"junegunn/fzf",
	-- "majutsushi/tagbar"
}

-- whichkey, autosession, alpha
