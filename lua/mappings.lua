require "nvchad.mappings"

local map = vim.keymap.set

-- removing default mappings
vim.keymap.del("n", "<leader>e");


map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- keep the cursor in the middle when searching/moving
map("n", "<C-u>", "<C-u>zz", { desc = "Move half a screen up" })
map("n", "<C-d>" , "<C-d>zz", { desc = "Move half a screen down" })
map("n", "n" , "nzzzv", { desc = "Find next instance" })
map("n", "N" , "Nzzzv", { desc = "Find previous instance"})

-- Telescope
map("n", "<C-p>", "<cmd> Telescope find_files <CR>", { desc = "Find files" })

-- Transparency
map( "n", "<leader>tt", function() require("base46").toggle_transparency() end, { desc = "Toggle Transparency" })

-- harpoon
map("n", "<leader>hp", function() local harpoon = require("harpoon") harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Open Harpoon list" })
map("n", "<leader>a", function() local harpoon = require("harpoon") harpoon:list():append() end, { desc = "Harpoon Append" })
map("n", "<leader>1", function() local harpoon = require("harpoon") harpoon:list():select(1) end, { desc = "Harpoon 1st buffer" })
map("n", "<leader>2", function() local harpoon = require("harpoon") harpoon:list():select(2) end, { desc = "Harpoon 2nd buffer" })
map("n", "<leader>3", function() local harpoon = require("harpoon") harpoon:list():select(3) end, { desc = "Harpoon 3rd buffer" })
map("n", "<leader>4", function() local harpoon = require("harpoon") harpoon:list():select(4) end, { desc = "Harpoon 4th buffer" })

-- moving blocks of code
map("v", "<S-j>", ":m '>+1<CR>gv=gv", { desc = "Move selected block one line down" })
map("v", "<S-k>", ":m '<-2<CR>gv=gv", { desc = "Move selected block one line up" })

