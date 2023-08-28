return {
  "akinsho/bufferline.nvim",
  optional = true,
  opts = function(_, opts)
    local Offset = require("bufferline.offset")

    opts.options.numbers = "ordinal"
    opts.options.always_show_bufferline = true
    opts.options.show_buffer_close_icons = false
    opts.options.show_close_icon = false

    if not Offset.edgy then
      local get = Offset.get

      Offset.get = function()
        if package.loaded.edgy then
          local layout = require("edgy.config").layout
          local ret = { left = "", left_size = 0, right = "", right_size = 0 }
          for _, pos in ipairs({ "left", "right" }) do
            local sb = layout[pos]
            if sb and #sb.wins > 0 then
              local title = " Sidebar" .. string.rep(" ", sb.bounds.width - 8)
              ret[pos] = "%#EdgyTitle#" .. title .. "%*" .. "%#WinSeparator#│%*"
              ret[pos .. "_size"] = sb.bounds.width
            end
          end
          ret.total_size = ret.left_size + ret.right_size

          if ret.total_size > 0 then
            return ret
          end
        end

        return get()
      end

      Offset.edgy = true
    end
  end,
}
