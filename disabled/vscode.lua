return {
    'Mofiqul/vscode.nvim',
    priority = 1000,
    dependencies = { "nvim-lualine/lualine.nvim" },
    config = function()
        -- Lua:
        -- For dark theme (neovim's default)
        vim.o.background = 'dark'
        local c = require('vscode.colors').get_colors()
        require('vscode').setup({
            -- Alternatively set style in setup
            style = 'dark',

            -- Enable transparent background
            transparent = true,

            -- Enable italic comment
            italic_comments = true,

            -- Underline `@markup.link.*` variants
            underline_links = true,

            -- Disable nvim-tree background color
            disable_nvimtree_bg = false,

            -- Apply theme colors to terminal
            terminal_colors = false,

            -- Override colors (see ./lua/vscode/colors.lua)
            color_overrides = {
                vscLineNumber = '#999999',
                -- vscBack = '#000000',
                -- vscBack = '#0F0F0F',
            },

            -- Override highlight groups (see ./lua/vscode/theme.lua)
            group_overrides = {
                -- this supports the same val table as vim.api.nvim_set_hl
                -- use colors from this colorscheme by requiring vscode.colors!
                Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
                NvimTreeGitDirtyIcon = { fg = c.vscGitModified, bg = 'NONE', bold = true },
                NvimTreeGitDeletedIcon = { fg = c.vscGitDeleted, bg = 'NONE', bold = true },
                NvimTreeGitNewIcon = { fg = c.vscGitAdded, bg = 'NONE', bold = true },
                NvimTreeGitStagedIcon = { fg = c.vscGitStageModified, bg = 'NONE', bold = true },
                NvimTreeGitRenamedIcon = { fg = c.vscGitRenamed, bg = 'NONE', bold = true },
                NvimTreeGitMergeIcon = { fg = c.vscGitUntracked, bg = 'NONE', bold = true },
                NvimTreeGitIgnoredIcon = { fg = c.vscGitIgnored, bg = 'NONE', bold = true },
                -- PreProc = { fg = c.vscYellow, bg = 'NONE', bold = true }
            }
        })
        -- vim.api.nvim_set_hl(0, 'NvimTreeRootFolder', { fg = c.vscFront, bg = 'NONE', bold = true })
        -- vim.api.nvim_set_hl(0, 'Statement', { fg = c.vscYellow, bg = 'NONE' })
        -- vim.api.nvim_set_hl(0, 'NvimTreeGitNew', { fg = c.vscGreen, bg = 'NONE' })
        -- vim.api.nvim_set_hl(0, 'NvimTreeImageFile', { fg = c.vscViolet, bg = 'NONE' })
        -- vim.api.nvim_set_hl(0, 'NvimTreeEmptyFolderName', { fg = c.vscGray, bg = 'NONE' })
        -- vim.api.nvim_set_hl(0, 'NvimTreeFolderName', { fg = c.vscFront, bg = 'NONE' })
        -- vim.api.nvim_set_hl(0, 'NvimTreeSpecialFile', { fg = c.vscPink, bg = 'NONE', underline = true })
        -- vim.api.nvim_set_hl(0, 'NvimTreeNormal', { fg = c.vscFront, bg = opts.disable_nvimtree_bg and c.vscBack or c.vscLeftDark })
        -- vim.api.nvim_set_hl(0, 'NvimTreeCursorLine', { fg = 'NONE', bg = opts.disable_nvimtree_bg and c.vscCursorDarkDark or c.vscLeftMid })
        -- vim.api.nvim_set_hl(0, 'NvimTreeVertSplit', { fg = opts.disable_nvimtree_bg and c.vscSplitDark or c.vscBack, bg = c.vscBack })
        -- vim.api.nvim_set_hl(0, 'NvimTreeEndOfBuffer', { fg = opts.disable_nvimtree_bg and c.vscCursorDarkDark or c.vscLeftDark })
        -- vim.api.nvim_set_hl(
        --     0,
        --     'NvimTreeOpenedFolderName',
        --     { fg = 'NONE', bg = opts.disable_nvimtree_bg and c.vscCursorDarkDark or c.vscLeftDark }
        -- )
        -- vim.api.nvim_set_hl(0, 'NvimTreeGitRenamed', { fg = c.vscGitRenamed, bg = 'NONE' })
        -- vim.api.nvim_set_hl(0, 'NvimTreeGitIgnored', { fg = c.vscGitIgnored, bg = 'NONE' })
        -- vim.api.nvim_set_hl(0, 'NvimTreeGitDeleted', { fg = c.vscGitDeleted, bg = 'NONE' })
        -- vim.api.nvim_set_hl(0, 'NvimTreeGitStaged', { fg = c.vscGitStageModified, bg = 'NONE' })
        -- vim.api.nvim_set_hl(0, 'NvimTreeGitMerge', { fg = c.vscGitUntracked, bg = 'NONE' })
        -- vim.api.nvim_set_hl(0, 'NvimTreeGitDirty', { fg = c.vscGitModified, bg = 'NONE' })
        -- vim.api.nvim_set_hl(0, 'NvimTreeGitNew', { fg = c.vscGitAdded, bg = 'NONE' })
        -- require('vscode').load()

        -- load the theme without affecting devicon colors.
        vim.cmd.colorscheme "vscode"
    end
}

