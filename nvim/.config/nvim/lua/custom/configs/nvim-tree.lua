local opts = {
  filters = {
    dotfiles = true,
  },
}

local config = function(opts)
  -- integrate with float window
  local function on_attach(bufnr)
    local api = require("nvim-tree.api")
    local FloatPreview = require("float-preview")
    api.config.mappings.default_on_attach(bufnr)

    FloatPreview.attach_nvimtree(bufnr)
  end

  opts.on_attach = on_attach
  dofile(vim.g.base46_cache .. "nvimtree")
  require("nvim-tree").setup(opts)
end

return {
  opts = opts,
  config = config,
}
