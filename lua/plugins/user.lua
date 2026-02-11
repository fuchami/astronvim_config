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
        group_empty_dirs = false, -- when true, empty folders will be grouped together
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
    opts = {
      preset = "modern",
    },
  },
  {
    "Zeioth/hot-reload.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    event = "BufEnter",
    opts = {},
  },
}
