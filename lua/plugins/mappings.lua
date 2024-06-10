return {
  {
    "AstroNvim/astrocore",
    --@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map

          -- window mapping
          ["-"] = { ":split<CR>", desc = "Horizontal Split" },
          ["<C-w>x"] = { "<C-w>c", desc = "Close Window" },

          -- resize
          ["<A-l>"] = { ":vertical resize +2<CR>" },
          ["<A-h>"] = { ":vertical resize -2<CR>" },
          ["<A-j>"] = { ":resize -2<CR>" },
          ["<A-k>"] = { ":resize +2<CR>" },
        },
      },
    },
  },
}
