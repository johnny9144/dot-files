require "nvchad.options"

-- add yours here!

vim.opt.relativenumber = true -- Relative line numbers
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "terraform", "hcl" },
  callback = function()
    vim.bo.commentstring = "# %s"
  end,
})

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
