return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  opts = function()
    local logo = [[
            VVVVVVVV           VVVVVVVV  iiii                                                                                                                     iiii                      
            V::::::V           V::::::V i::::i                                                                                                                   i::::i                     
            V::::::V           V::::::V  iiii                                                                                                                     iiii                      
            V::::::V           V::::::V                                                                                                                                                     
            V:::::V           V:::::V iiiiiii     eeeeeeeeeeee    wwwwwww           wwwww           wwwwwww    ssssssssss      ooooooooooo   nnnn  nnnnnnnn    iiiiiii     cccccccccccccccc
              V:::::V         V:::::V  i:::::i   ee::::::::::::ee   w:::::w         w:::::w         w:::::w   ss::::::::::s   oo:::::::::::oo n:::nn::::::::nn  i:::::i   cc:::::::::::::::c
              V:::::V       V:::::V    i::::i  e::::::eeeee:::::ee  w:::::w       w:::::::w       w:::::w  ss:::::::::::::s o:::::::::::::::on::::::::::::::nn  i::::i  c:::::::::::::::::c
                V:::::V     V:::::V     i::::i e::::::e     e:::::e   w:::::w     w:::::::::w     w:::::w   s::::::ssss:::::so:::::ooooo:::::onn:::::::::::::::n i::::i c:::::::cccccc:::::c
                V:::::V   V:::::V      i::::i e:::::::eeeee::::::e    w:::::w   w:::::w:::::w   w:::::w     s:::::s  ssssss o::::o     o::::o  n:::::nnnn:::::n i::::i c::::::c     ccccccc
                  V:::::V V:::::V       i::::i e:::::::::::::::::e      w:::::w w:::::w w:::::w w:::::w        s::::::s      o::::o     o::::o  n::::n    n::::n i::::i c:::::c             
                  V:::::V:::::V        i::::i e::::::eeeeeeeeeee        w:::::w:::::w   w:::::w:::::w            s::::::s   o::::o     o::::o  n::::n    n::::n i::::i c:::::c             
                    V:::::::::V         i::::i e:::::::e                  w:::::::::w     w:::::::::w       ssssss   s:::::s o::::o     o::::o  n::::n    n::::n i::::i c::::::c     ccccccc
                    V:::::::V         i::::::ie::::::::e                  w:::::::w       w:::::::w        s:::::ssss::::::so:::::ooooo:::::o  n::::n    n::::ni::::::ic:::::::cccccc:::::c
                      V:::::V          i::::::i e::::::::eeeeeeee           w:::::w         w:::::w         s::::::::::::::s o:::::::::::::::o  n::::n    n::::ni::::::i c:::::::::::::::::c
                      V:::V           i::::::i  ee:::::::::::::e            w:::w           w:::w           s:::::::::::ss   oo:::::::::::oo   n::::n    n::::ni::::::i  cc:::::::::::::::c
                        VVV            iiiiiiii    eeeeeeeeeeeeee             www             www             sssssssssss       ooooooooooo     nnnnnn    nnnnnniiiiiiii    cccccccccccccccc

                                                                                                          [ Johnny Huang ]                                                                                  
    ]]

    logo = string.rep("\n", 8) .. logo .. "\n\n"

    local opts = {
      theme = "doom",
      hide = {
        -- this is taken care of by lualine
        -- enabling this messes up the actual laststatus setting after loading a file
        statusline = false,
      },
      config = {
        header = vim.split(logo, "\n"),
      -- stylua: ignore
      center = {
        { action = "Telescope find_files",                                     desc = " Find file",       icon = " ", key = "f" },
        { action = "ene | startinsert",                                        desc = " New file",        icon = " ", key = "n" },
        { action = "Telescope oldfiles",                                       desc = " Recent files",    icon = " ", key = "r" },
        { action = "Telescope live_grep",                                      desc = " Find text",       icon = " ", key = "g" },
        { action = [[lua require("lazyvim.util").telescope.config_files()()]], desc = " Config",          icon = " ", key = "c" },
        { action = 'lua require("persistence").load()',                        desc = " Restore Session", icon = " ", key = "s" },
        { action = "LazyExtras",                                               desc = " Lazy Extras",     icon = " ", key = "x" },
        { action = "Lazy",                                                     desc = " Lazy",            icon = "󰒲 ", key = "l" },
        { action = "qa",                                                       desc = " Quit",            icon = " ", key = "q" },
      },
        footer = function()
          local stats = require("lazy").stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
        end,
      },
    }

    for _, button in ipairs(opts.config.center) do
      button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
      button.key_format = "  %s"
    end

    -- close Lazy and re-open when the dashboard is ready
    if vim.o.filetype == "lazy" then
      vim.cmd.close()
      vim.api.nvim_create_autocmd("User", {
        pattern = "DashboardLoaded",
        callback = function()
          require("lazy").show()
        end,
      })
    end

    return opts
  end,
}
