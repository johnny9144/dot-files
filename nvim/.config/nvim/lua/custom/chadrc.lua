---@type ChadrcConfig
local M = {}

M.ui = {
  theme_toggle = { "catppuccin", "tokyonight" },
  theme = "catppuccin",
  tabufline = {
    lazyload = false,
  },
  hl_add = {
    -- dashboard color hl group start
    DashboardDesc = {
      fg = "nord_blue",
    },
    DashboardKey = {
      fg = "sun",
    },
    DashboardIcon = {
      fg = "teal",
    },
    DashboardFooter = {
      fg = "red",
    },
    -- end
  },
  telescope = { style = "bordered" }, -- borderless / bordered
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require("custom.mappings")

return M
