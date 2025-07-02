-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

local function is_private_machine() return os.getenv "NVIM_PROFILE" == "private" end

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
  -- AI
  is_private_machine()
      and {
        "yetone/avante.nvim",
        opts = {
          provider = "copilot",
          providers = {
            copilot = { model = "o3-mini" },
          },
        },
      }
    or nil,
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
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      preset = "modern",
    },
  },
  {
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
          return vim.g.snacks_scroll ~= false
            and vim.b[buf].snacks_scroll ~= false
            and vim.bo[buf].buftype ~= "terminal"
        end,
      },
      indent = {
        enabled = true,
      },
    },
  },
}
