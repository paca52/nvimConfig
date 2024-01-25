-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
vim.wo.relativenumber = true
vim.opt.guicursor = ""
vim.wo.wrap = false
-- vim.opt.hisearch = false
-- vim.wo.conceallevel = 1
--
vim.opt.wrap = false

-- vim.opt.clipboard:append('unnamedplus')

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.incsearch = true
vim.opt.hlsearch = false

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
