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
-- themes i like: nightowl - nightfox

M.mappings = require "custom.mappings"
M.plugins = "custom.plugins"

return M
