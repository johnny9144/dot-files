local dashboard = require("dashboard")
local home = os.getenv("HOME")

local doom = {
  theme = "doom",
  config = {
    header = {},
    center = {
      { action = "Telescope find_files cwd=", desc = " Find file", icon = " ", key = "f" },
      { action = "Telescope oldfiles", desc = " Recent files", icon = " ", key = "r" },
      { action = "Telescope live_grep", desc = " Find text", icon = " ", key = "g" },
      { action = "ene | startinsert", desc = " New file", icon = " ", key = "n" },
      { action = 'lua require("persistence").load()', desc = " Restore Session", icon = " ", key = "s" },
      { action = "Lazy", desc = " Lazy", icon = "󰒲 ", key = "l" },
      { action = "qa", desc = " Quit", icon = " ", key = "q" },
    },
    packages = { enable = true },
  },
  preview = {
    command = "lolcat | lolcat",
    -- https://patorjk.com/software/taag/#p=testall&h=3&v=0&f=Big&t=Viewsonic
    file_path = home .. "/.config/nvim/lua/custom/logo/Star-Wars.txt",
    file_height = 9,
    file_width = 100,
  },
}

dashboard.setup(doom)
