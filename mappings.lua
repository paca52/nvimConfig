---@type MappingsTable
local M = {}

-- local harpoon = require("harpoon")

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-p>"] = {
      "<cmd> Telescope find_files <CR>",
      "Find files"
    },
    ["<leader>tt"] = {
      function()
        require("base46").toggle_transparency()
      end,
      "toggle transparency",
    },
    ["<leader>hp"] = {
      function()
        local harpoon = require("harpoon")
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      "Open Harpoon list"
    },
    ["<leader>a"] = {
      function()
        local harpoon = require("harpoon")
        harpoon:list():append()
      end,
      "Harpoon Append"
    },
    ["<leader>1"] = {
      function()
        local harpoon = require("harpoon")
        harpoon:list():select(1)
      end,
      "Harpoon 1st buffer"
    },
    ["<leader>2"] = {
      function()
        local harpoon = require("harpoon")
        harpoon:list():select(2)
      end,
      "Harpoon 2nd buffer"
    },
    ["<leader>3"] = {
      function()
        local harpoon = require("harpoon")
        harpoon:list():select(3)
      end,
      "Harpoon 3rd buffer"
    },
    ["<leader>4"] = {
      function()
        local harpoon = require("harpoon")
        harpoon:list():select(4)
      end,
      "Harpoon 4th buffer"
    },
  },
  v = {
    ["<S-j>"] = { ":m '>+1<CR>gv=gv", "test" },
    ["<S-k>"] = { ":m '<-2<CR>gv=gv", "test" },
  }
}

-- more keybinds!

return M
