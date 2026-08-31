---@type LazySpec
return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {
      preset = "obsidian",
      render_modes = { "n", "c", "t" },
      heading = {
        border = true,
      },
      pipe_table = {
        enabled = false,
      },
    },
  },
  {
    "ice345/markdown-table-wrap.nvim",
    ft = { "markdown", "quarto", "rmd" },
    dependencies = {
      { "AstroNvim/astroui", opts = { icons = { MarkdownTable = "󰓫" } } },
      {
        "AstroNvim/astrocore",
        opts = function(_, opts)
          local maps = opts.mappings
          local prefix = "<Leader>m"
          maps.n[prefix] = {
            desc = require("astroui").get_icon("MarkdownTable", 1, true) .. "Markdown Table",
          }
          maps.n[prefix .. "t"] = {
            "<Cmd>MarkdownTableTogglePreview<CR>",
            desc = "Toggle Markdown table preview",
          }
          maps.n[prefix .. "p"] = { "<Cmd>MarkdownTablePreview<CR>", desc = "Preview Markdown tables" }
          maps.n[prefix .. "f"] = {
            "<Cmd>MarkdownTableFloatPreview<CR>",
            desc = "Float Markdown table preview",
          }
          maps.n[prefix .. "r"] = {
            "<Cmd>MarkdownTableToggleReader<CR>",
            desc = "Toggle Markdown table reader",
          }
          maps.n[prefix .. "i"] = {
            "<Cmd>MarkdownTableToggleInline<CR>",
            desc = "Toggle Markdown table inline view",
          }
          maps.n[prefix .. "e"] = { "<Cmd>MarkdownTableEditSource<CR>", desc = "Edit Markdown source" }
          maps.n[prefix .. "c"] = {
            "<Cmd>MarkdownTableClosePreview<CR>",
            desc = "Close Markdown table preview",
          }
          maps.n[prefix .. "T"] = {
            "<Cmd>MarkdownTableToggleAutoPreview<CR>",
            desc = "Toggle auto Markdown table preview",
          }
          maps.n[prefix .. "q"] = {
            "<Cmd>MarkdownTableToggleInlineViewport<CR>",
            desc = "Toggle inline table viewport",
          }
          maps.n["]c"] = { "<Cmd>MarkdownTableNextCell<CR>", desc = "Next table cell" }
          maps.n["[c"] = { "<Cmd>MarkdownTablePrevCell<CR>", desc = "Previous table cell" }
          maps.n["]r"] = { "<Cmd>MarkdownTableNextRow<CR>", desc = "Next table row" }
          maps.n["[r"] = { "<Cmd>MarkdownTablePrevRow<CR>", desc = "Previous table row" }
          maps.n[prefix .. "j"] = {
            function() require("markdown-table-wrap").scroll_view(vim.v.count1) end,
            desc = "Scroll rendered table down",
          }
          maps.n[prefix .. "k"] = {
            function() require("markdown-table-wrap").scroll_view(-vim.v.count1) end,
            desc = "Scroll rendered table up",
          }
          maps.n[prefix .. "gg"] = { "<Cmd>MarkdownTableScrollTop<CR>", desc = "Scroll rendered table to top" }
          maps.n[prefix .. "G"] = {
            "<Cmd>MarkdownTableScrollBottom<CR>",
            desc = "Scroll rendered table to bottom",
          }
        end,
      },
    },
    opts = {
      auto_preview = false,
    },
  },
  {
    "Kicamon/markdown-table-mode.nvim",
    ft = "markdown",
    config = function()
      require("markdown-table-mode").setup()
      vim.cmd.Mtm()
    end,
  },
}
