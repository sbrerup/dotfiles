require("config.lazy")
require("lualine").setup {
  options = { theme = "everforest" }
}

vim.cmd("set number")
vim.cmd("set relativenumber")

vim.opt.shiftwidth = 4
vim.opt.clipboard = "unnamedplus"

vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("n", "<space>x", ":lua<CR>")
