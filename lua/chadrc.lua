-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "one_light" },

  -- ui elements
  telescope = { style = "bordered" }, -- borderless / bordered
  statusline = { theme = "vscode_colored", },
  tabufline = { enabled = false, },
  nvdash = {
    load_on_startup = true,
  },
  transparency = false,
}

return M
