---@type LazySpec
return {
  "mikavilpas/yazi.nvim",
  version = "*",
  cmd = "Yazi",
  dependencies = {
    { "nvim-lua/plenary.nvim", lazy = true },
    { "AstroNvim/astroui", opts = { icons = { Yazi = "" } } },
    {
      "AstroNvim/astrocore",
      opts = function(_, opts)
        local maps = opts.mappings
        local prefix = "<Leader>Y"
        local icon = require("astroui").get_icon("Yazi", 1, true)

        maps.n["<Leader>y"] = { "<Cmd>Yazi<CR>", desc = "Toggle Yazi" }

        maps.n[prefix] = { desc = icon .. "Yazi" }
        maps.n[prefix .. "-"] = { "<Cmd>Yazi<CR>", desc = "Open yazi at the current file" }
        maps.n[prefix .. "c"] = { "<Cmd>Yazi cwd<CR>", desc = "Open yazi in nvim's working directory" }
        maps.n[prefix .. "t"] = { "<Cmd>Yazi toggle<CR>", desc = "Resume the last yazi session" }
      end,
    },
  },
  opts = function()
    local opts = {
      open_for_directories = false,
      keymaps = {
        show_help = "<F1>",
      },
    }

    if pcall(require, "snacks") then
      opts.integrations = {
        grep_in_directory = "snacks.picker",
        grep_in_selected_files = "snacks.picker",
      }
    end

    return opts
  end,
}
