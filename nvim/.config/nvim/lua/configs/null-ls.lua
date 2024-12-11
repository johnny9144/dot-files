local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require "null-ls"

local opts = {
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.prettierd,
    null_ls.builtins.formatting.terraform_fmt,
  },
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds {
        group = augroup,
        buffer = bufnr,
      }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format {
            bufnr = bufnr,
            -- Never request typescript-language-server for formatting because it will conflict with prettier
            filter = function(client)
              return client.name ~= "tsserver"
            end,
          }
        end,
      })
    end
  end,
}

return opts
