local opts = {
  -- directory where session files are saved
  dir = vim.fn.expand(vim.fn.stdpath("state") .. "/sessions/"),
  -- sessionoptions used for saving
  options = { "buffers", "curdir", "tabpages", "winsize" },
  -- a function to call before saving the session
  pre_save = nil,
  -- don't save if there are no open file buffers
  save_empty = false,
}

return opts
