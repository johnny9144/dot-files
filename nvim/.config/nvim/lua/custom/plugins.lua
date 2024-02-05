local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "eslint-lsp",
        "eslint_d",
        "prettierd",
        "stylua",
        "typescript-language-server",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("plugins.configs.lspconfig")
      require("custom.configs.lspconfig")
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require("custom.configs.null-ls")
    end,
  },
  {
    "johnny9144/hop.nvim",
    keys = {
      { "<leader><leader>w", "<cmd>HopWordAC<cr>", desc = "HopWord down" },
      { "<leader><leader>b", "<cmd>HopWordBC<cr>", desc = "HopWord up" },
    },
    config = function()
      require("custom.configs.hop")
    end,
  },
  {
    "zbirenbaum/copilot.lua",
    -- Lazy load when event occurs. Events are triggered
    -- as mentioned in:
    -- https://vi.stackexchange.com/a/4495/20389
    event = "InsertEnter",
    -- You can also have it load at immediately at
    -- startup by commenting above and uncommenting below:
    -- lazy = false
    opts = {
      -- Possible configurable fields can be found on:
      -- https://github.com/zbirenbaum/copilot.lua#setup-and-configuration
      suggestion = {
        enable = false,
      },
      panel = {
        enable = false,
      },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {
        "zbirenbaum/copilot-cmp",
        config = function()
          require("copilot_cmp").setup()
        end,
      },
    },
    opts = {
      sources = {
        { name = "nvim_lsp", group_index = 2 },
        { name = "copilot",  group_index = 2 },
        { name = "luasnip",  group_index = 2 },
        { name = "buffer",   group_index = 2 },
        { name = "nvim_lua", group_index = 2 },
        { name = "path",     group_index = 2 },
      },
    },
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = function()
      return require("custom.configs.nvim-tree")
    end,
  },
  {
    "folke/persistence.nvim",
    event = "BufReadPre",                                        -- this will only start session saving when an actual file was opened
    opts = {
      dir = vim.fn.expand(vim.fn.stdpath("state") .. "/sessions/"), -- directory where session files are saved
      options = { "buffers", "curdir", "tabpages", "winsize" },  -- sessionoptions used for saving
      pre_save = nil,                                            -- a function to call before saving the session
      save_empty = false,                                        -- don't save if there are no open file buffers
    },
    keys = {
      {
        "<leader>qs",
        '<cmd>lua require("persistence").load()<cr>',
        desc = "Restore the session for the current directory",
      },
      {
        "<leader>ql",
        '<cmd>lua require("persistence").load({ last = true })<cr>',
        desc = "Restore the last session",
      },
    },
  },
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require("custom.configs.dashboard")
    end,
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
  },
}
return plugins
