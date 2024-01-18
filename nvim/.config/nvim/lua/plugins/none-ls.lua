-- https://github.com/nvimtools/none-ls.nvim

return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    local nls = require("null-ls")

    vim.list_extend(opts.sources, {
      nls.builtins.formatting.terraform_fmt,
      nls.builtins.diagnostics.terraform_validate,
      nls.builtins.diagnostics.hadolint,
      -- there is a bug formatting yaml with prettier currently
      nls.builtins.formatting.prettier.with({
        disabled_filetypes = { "yaml", "yml" },
      }),
    })
  end,
}
