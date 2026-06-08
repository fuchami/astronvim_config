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
  {
    "3rd/diagram.nvim",
    enabled = false,
    dependencies = {
      { "3rd/image.nvim", opts = {} }, -- you'd probably want to configure image.nvim manually instead of doing this
    },
    opts = { -- you can just pass {}, defaults below
      events = {
        render_buffer = { "InsertLeave", "BufWinEnter", "TextChanged" },
        clear_buffer = { "BufLeave" },
      },
      renderer_options = {
        mermaid = {
          background = nil, -- nil | "transparent" | "white" | "#hex"
          theme = nil, -- nil | "default" | "dark" | "forest" | "neutral"
          scale = 1, -- nil | 1 (default) | 2  | 3 | ...
          width = nil, -- nil | 800 | 400 | ...
          height = nil, -- nil | 600 | 300 | ...
          cli_args = nil, -- nil | { "--no-sandbox" } | { "-p", "/path/to/puppeteer" } | ...
        },
        plantuml = {
          charset = nil,
          cli_args = nil, -- nil | { "-Djava.awt.headless=true" } | ...
        },
        d2 = {
          theme_id = nil,
          dark_theme_id = nil,
          scale = nil,
          layout = nil,
          sketch = nil,
          cli_args = nil, -- nil | { "--pad", "0" } | ...
        },
        gnuplot = {
          size = nil, -- nil | "800,600" | ...
          font = nil, -- nil | "Arial,12" | ...
          theme = nil, -- nil | "light" | "dark" | custom theme string
          cli_args = nil, -- nil | { "-p" } | { "-c", "config.plt" } | ...
        },
      },
    },
  },
}
