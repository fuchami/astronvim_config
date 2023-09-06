-- This function is run last and is a good place to configuring
-- augroups/autocommands and custom filetypes also this just pure lua so
-- anything that doesn't fit in the normal config locations above can go here
--
-- use fig in toggleterm
vim.fn.setenv("FIG_TERM", nil)

-- disable shared clipboard
vim.opt.clipboard = ""

-- override markdown indent to 2 spaces.
vim.api.nvim_create_autocmd("filetype", {
  pattern = "markdown",
  callback = function()
    vim.opt.shiftwidth = 2
    vim.opt.tabstop = 2
    vim.opt.softtabstop = 2
  end,
})
