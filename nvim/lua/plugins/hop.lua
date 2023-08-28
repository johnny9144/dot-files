return {
  "johnny9144/hop.nvim",
  keys = {
    { ",w", "<cmd>HopWordAC<cr>", desc = "HopWord down" },
    { ",b", "<cmd>HopWordBC<cr>", desc = "HopWord up" },
  },
  config = function()
    require("hop").setup({
      keys = "etovxqpdygfblzhckisuran",
    })
  end,
}
