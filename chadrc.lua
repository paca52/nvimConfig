---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "one_light" },
  hl_override = highlights.override,
  hl_add = highlights.add,

  -- ui elements
  telescope = { style = "bordered" }, -- borderless / bordered
  statusline = { theme = "vscode_colored", },
  tabufline = { enabled = false, },
  nvdash = {
    load_on_startup = true,
  },
  transparency = false,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
