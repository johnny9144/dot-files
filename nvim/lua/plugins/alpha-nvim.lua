return {
  "goolord/alpha-nvim",
  optional = true,
  opts = function(_, dashboard)
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

    dashboard.section.header.val = vim.split(logo, "\n")

    local buttonRestoreSessionList = dashboard.button("S", " " .. " Session List", [[:Telescope persisted <CR>]])
    local buttonRestoreLastSession = dashboard.button("s", " " .. " Restore Last Session", [[:SessionLoadLast <CR>]])

    buttonRestoreSessionList.opts.hl = "AlphaButtons"
    buttonRestoreSessionList.opts.hl_shortcut = "AlphaShortcut"
    buttonRestoreLastSession.opts.hl = "AlphaButtons"
    buttonRestoreLastSession.opts.hl_shortcut = "AlphaShortcut"

    table.remove(dashboard.section.buttons.val, 7)
    table.insert(dashboard.section.buttons.val, 7, buttonRestoreLastSession)
    table.insert(dashboard.section.buttons.val, 8, buttonRestoreSessionList)
  end,
}
