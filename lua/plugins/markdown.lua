---@type LazySpec
return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {
      render_modes = true,
    },
  },
  {
    "Kicamon/markdown-table-mode.nvim",
    ft = "markdown",
    config = function()
      require("markdown-table-mode").setup()
      vim.cmd.Mtm()
    end,
  },
}
