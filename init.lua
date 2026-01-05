vim.g.mapleader = " "
require("config.lazy")
require("options")
require("keymaps")
require("autocmd")
require("lsp")
if vim.g.neovide then
    require("neovide")
end
