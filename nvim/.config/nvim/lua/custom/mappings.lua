local M = {}

M.general = {
  n = {
    ["<leader>qq"] = { "<cmd> qa <CR>", "Quit nvim" },
    ["<leader><leader>w"] = { "<cmd>HopWordAC<cr>", "HopWord down" },
    ["<leader><leader>b"] = { "<cmd>HopWordBC<cr>", "HopWord up" },

    ["<leader>qs"] = {
      '<cmd>lua require("persistence").load()<cr>',
      "Restore the session for the current directory",
    },
    ["<leader>ql"] = {
      '<cmd>lua require("persistence").load({ last = true })<cr>',
      "Restore the last session",
    },
  },
}

M.lspconfig = {
  n = {
    ["<leader>t"] = { "<cmd>TroubleToggle<CR>", "Open Diagnostics Panel" },
  },
}

return M
