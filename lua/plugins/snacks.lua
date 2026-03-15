return {
  "folke/snacks.nvim",
  opts = {
    ---@class snacks.scroll.Config
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
    indent = {
      enabled = true,
    },
    ---@class snacks.gh.Config
    gh = {},
  },
  keys = {
    { "<leader>gi", function() require("snacks").picker.gh_issue() end, desc = "GitHub Issues (open)" },
    { "<leader>gI", function() require("snacks").picker.gh_issue { state = "all" } end, desc = "GitHub Issues (all)" },
    { "<leader>gp", function() require("snacks").picker.gh_pr() end, desc = "GitHub Pull Requests (open)" },
    {
      "<leader>gP",
      function() require("snacks").picker.gh_pr { state = "all" } end,
      desc = "GitHub Pull Requests (all)",
    },
  },
}
