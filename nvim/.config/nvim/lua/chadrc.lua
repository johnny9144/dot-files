-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.ui = {
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

M.base46 = {
  theme_toggle = { "catppuccin", "tokyonight" },
  theme = "catppuccin",
}

M.mason = {
  pkgs = {
    "typescript-language-server",
    "lua-language-server",
    "prettierd",
    "stylua",
    "biome",
  },
}

return M
