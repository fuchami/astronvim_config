-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  -- Editor
  {
    "s-show/extend_word_motion.nvim",
    opts = {},
    dependencies = {
      "sirasagi62/tinysegmenter.nvim",
    },
  },
  {
    "neogen",
    opts = {
      languages = {
        python = { template = { annotation_convention = "google_docstrings" } },
      },
    },
  },
  {
    "sheng-tse/jupynvim",
    build = function(plugin)
      local install = loadfile(plugin.dir .. "/lua/jupynvim/install.lua")()
      install.run(plugin)
    end,
    config = function()
      require("jupynvim").setup {
        log_level = "info",
        image_renderer = "kitty",
      }
    end,
  },
  -- UI
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
        -- "shallow": Don't scan into directories to detect possible empty directory a priori
        -- "deep": Scan into directories to detect empty or grouped empty directories a priori.
        scan_mode = "deep",
        group_empty_dirs = true, -- when true, empty folders will be grouped together
      },
      window = {
        position = "left",
        mappings = {
          ["H"] = "prev_source",
          ["L"] = "next_source",
        },
      },
    },
  },
  {
    "folke/which-key.nvim",
    ---@class wk.Opts
    opts = {
      ---@type false | "classic" | "modern" | "helix"
      preset = "modern",
    },
  },
}
