return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- {
  --   "TimUntersberger/neogit",
  --   version = "*", -- Use for stability; omit to use `main` branch for the latest features
  --   event = "VeryLazy",
  --   dependencies = {
  --     "sindrets/diffview.nvim",
  --   },
  --   config = function()
  --     require("neogit").setup {
  --       integrations = {
  --         diffview = true,
  --       },
  --     }
  --   end,
  -- },
  -- rainbow-indent like VScode
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = function(_, opts)
      -- Other blankline configuration here
      return require("indent-rainbowline").make_opts(opts)
    end,
    dependencies = {
      "TheGLander/indent-rainbowline.nvim",
    },
  },
}
