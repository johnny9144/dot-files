local trouble = require "trouble"

dofile(vim.g.base46_cache .. "trouble")

trouble.setup {
  mode = "document_diagnostics",
  use_diagnostic_signs = true,
}
