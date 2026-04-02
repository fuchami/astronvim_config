-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  -- Editor
  {
    "neogen",
    opts = {
      languages = {
        python = { template = { annotation_convention = "google_docstrings" } },
      },
    },
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
  {
    "DrKJeff16/wezterm-types",
    lazy = true,
    version = false, -- Get the latest version
  },
  {
    "folke/lazydev.nvim",
    optional = true,
    opts = function(_, opts)
      if not opts.library then opts.library = {} end

      table.insert(opts.library, {
        path = "wezterm-types",
        mods = { "wezterm" },
      })
    end,
  },
  -- media
  {
    "3rd/image.nvim",
    build = false, -- so that it doesn't build the rock https://github.com/3rd/image.nvim/issues/91#issuecomment-2453430239
    opts = {
      backend = "sixel", -- or "ueberzug" or "kitty"
    },
  },
}
