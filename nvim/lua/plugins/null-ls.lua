-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md

return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, opts)
    local nls = require("null-ls")

    vim.list_extend(opts.sources, {
      nls.builtins.formatting.terraform_fmt,
      nls.builtins.diagnostics.terraform_validate,
      nls.builtins.diagnostics.hadolint,
      -- there is a bug formatting yaml with prettierd currently
      nls.builtins.formatting.prettierd.with({
        disabled_filetypes = { "yaml" },
      }),
    })
  end,
}
