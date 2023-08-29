return {
  "telescope.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
  opts = {
    extensions = {
      persisted = {
        layout_config = { width = 0.55, height = 0.55 },
      },
    },
  },
}
