-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "python",
      "yaml",
      "markdown",
      "toml",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
