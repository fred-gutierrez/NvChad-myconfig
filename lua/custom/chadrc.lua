---@type ChadrcConfig
local M = {}
M.ui = {
  theme = "nightowl",
  transparency = true,

  statusline = {
    theme = "minimal",
  },
  nvdash = {
    load_on_startup = true,
  },
}

M.mappings = require "custom.mappings"
M.plugins = "custom.plugins"

return M
