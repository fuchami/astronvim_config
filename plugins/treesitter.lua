return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "HiPhish/nvim-ts-rainbow2",
  },
  opts = {
    auto_install = true,
    indent = {
      enable = true,
      disable = { "python" },
    },
    rainbow = {
      enable = true,
    },
  },
}
