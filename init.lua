vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("config.options")
require("config.keymaps")

require("config.autocommands")

require("lazy-bootstrap")
require("lazy-plugins")
require("config.colors")