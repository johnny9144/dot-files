local autocmd = vim.api.nvim_create_autocmd

-- auto change cwd to current file
autocmd("BufEnter", {
	pattern = "*",
	command = "silent! lcd %:p:h",
})

vim.opt.relativenumber = true -- Relative line numbers

vim.g.mapleader = ","
