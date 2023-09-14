return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        -- show hidden files.
        visible = true,
      },
      -- "shallow": Don't scan into directories to detect possible empty directory a priori
      -- "deep": Scan into directories to detect empty or grouped empty directories a priori.
      scan_mode = "deep",
      group_empty_dirs = true, -- when true, empty folders will be grouped together
    },
  },
}
