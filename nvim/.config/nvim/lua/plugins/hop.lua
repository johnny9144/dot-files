return {
  "johnny9144/hop.nvim",
  keys = {
    { "<leader><leader>w", "<cmd>HopWordAC<cr>", desc = "HopWord down" },
    { "<leader><leader>b", "<cmd>HopWordBC<cr>", desc = "HopWord up" },
  },
  config = function()
    require("hop").setup({
      keys = "etovxqpdygfblzhckisuran",
    })
  end,
}
