return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, opts)
    local nls = require("null-ls")

    table.insert(opts.sources, require("typescript.extensions.null-ls.code-actions"))
    table.insert(opts.sources, nls.builtins.formatting.prettierd)

    vim.list_extend(opts.sources, {
      nls.builtins.formatting.terraform_fmt,
      nls.builtins.diagnostics.terraform_validate,
      nls.builtins.diagnostics.hadolint,
    })
  end,
}
