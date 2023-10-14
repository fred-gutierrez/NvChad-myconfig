---@type ChadrcConfig
local M = {}
M.ui = {
  theme = "oceanic-next",
  transparency = true,

  statusline = {
    theme = "minimal",
  },
  nvdash = {
    load_on_startup = true,
  },
}
-- themes i like: oceanic-next - nightfox

M.mappings = require "custom.mappings"
M.plugins = "custom.plugins"

return M
