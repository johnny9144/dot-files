local opts = {
  filters = {
    dotfiles = true,
    -- git_ignored = false,
  },
}

local config = function(opts)
  dofile(vim.g.base46_cache .. "nvimtree")
  require("nvim-tree").setup(opts)
end

return {
  opts = opts,
  config = config,
}
