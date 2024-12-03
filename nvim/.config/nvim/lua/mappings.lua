require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

map("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Close nvim" })

map("n", "<c-h>", "<cmd>TmuxNavigateLeft<cr>")
map("n", "<c-j>", "<cmd>TmuxNavigateDown<cr>")
map("n", "<c-k>", "<cmd>TmuxNavigateUp<cr>")
map("n", "<c-l>", "<cmd>TmuxNavigateRight<cr>")
map("n", "<c-\\>", "<cmd>TmuxNavigatePrevious<cr>")

map("n", "<leader><leader>w", "<cmd>HopWordAC<cr>", { desc = "HopWord down" })
map("n", "<leader><leader>b", "<cmd>HopWordBC<cr>", { desc = "HopWord up" })

map("n", "<leader>X", "<cmd>%bd|e#<cr>", { desc = "Close all buffers but current one" })

-- map("n", "<leader>t", "<cmd>TroubleToggle<CR>", { desc = "LSP toggle the Diagnostics Panel" })

map("n", "<leader>S", '<cmd>lua require("spectre").toggle()<CR>', { desc = "Replace toggle Spectre to replace words" })

