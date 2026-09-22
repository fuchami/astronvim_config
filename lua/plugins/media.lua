---@type LazySpec
return {
  {
    "3rd/image.nvim",
    build = false,
    ft = { "markdown" },
    opts = {
      backend = "kitty",
      processor = "magick_cli",
    },
  },
  {
    "3rd/diagram.nvim",
    enabled = true,
    dependencies = {
      { "3rd/image.nvim" },
    },
    opts = {
      events = {
        render_buffer = {},
        clear_buffer = { "BufLeave" },
      },
      renderer_options = {
        mermaid = {
          scale = 3,
        },
      },
    },
    keys = {
      {
        "K",
        function() require("diagram").show_diagram_hover() end,
        mode = "n",
        ft = { "markdown", "norg" }, -- Only in these filetypes
        desc = "Show diagram in new tab",
      },
    },
  },
}
