return {
  "folke/snacks.nvim",
  opts = {
    scroll = {
      animate = {
        duration = { step = 10, total = 100 },
        easing = "linear",
      },
      animate_repeat = {
        delay = 100, -- delay in ms before using the repeat animation
        duration = { step = 3, total = 30 },
        easing = "linear",
      },
      filter = function(buf)
        return vim.g.snacks_scroll ~= false and vim.b[buf].snacks_scroll ~= false and vim.bo[buf].buftype ~= "terminal"
      end,
    },
    ---@class snacks.indent.Config
    ---@field enabled? boolean
    indent = {
      enabled = true,
    },
  },
}
