-- This function is run last and is a good place to configuring
-- augroups/autocommands and custom filetypes also this just pure lua so
-- anything that doesn't fit in the normal config locations above can go here
--
-- use fig in toggleterm
vim.fn.setenv("FIG_TERM", nil)

vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.relativenumber = false

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.hql",
  command = "set filetype=sql",
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.tpl",
  command = "set filetype=sql",
})
