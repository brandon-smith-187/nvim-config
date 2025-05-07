-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

local function open_nvim_tree(data)
	-- buffer is a directory
	local directory = vim.fn.isdirectory(data.file) == 1

	if not directory then
		return
	end

	-- create a new, empty buffer
	vim.cmd.enew()

	-- wipe the directory buffer
	vim.cmd.bw(data.buf)

	-- change to the directory
	vim.cmd.cd(data.file)

	-- open the tree
	require("nvim-tree.api").tree.open()
	-- vim.api.nvim_cmd({ cmd = "AerialOpen" }, {})
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

-- Make :bd and :q behave as usual when tree is visible
vim.api.nvim_create_autocmd({ "BufEnter", "QuitPre" }, {
	nested = false,
	callback = function(e)
		local tree = require("nvim-tree.api").tree

		-- Nothing to do if tree is not opened
		if not tree.is_visible() then
			return
		end

		-- How many focusable windows do we have? (excluding e.g. incline status window)
		local winCount = 0
		for _, winId in ipairs(vim.api.nvim_list_wins()) do
			if vim.api.nvim_win_get_config(winId).focusable then
				winCount = winCount + 1
			end
		end

		-- We want to quit and only one window besides tree is left
		if e.event == "QuitPre" and winCount == 2 then
			vim.api.nvim_cmd({ cmd = "qall" }, {})
		end

		-- :bd was probably issued an only tree window is left
		-- Behave as if tree was closed (see `:h :bd`)
		if e.event == "BufEnter" and winCount == 1 then
			-- Required to avoid "Vim:E444: Cannot close last window"
			vim.defer_fn(function()
				-- close nvim-tree: will go to the last buffer used before closing
				tree.toggle({ find_file = true, focus = true })
				-- re-open nivm-tree
				tree.toggle({ find_file = true, focus = false })
			end, 10)
		end
	end,
})
-- vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
-- 	-- disabled_filetypes = { "NvimTree", "aerial" },
-- 	-- pattern = "*.md",
-- 	callback = function()
-- 		vim.api.nvim_cmd({ cmd = "AerialOpen" }, {})
-- 	end,
-- })
