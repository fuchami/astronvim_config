if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  {
    "yetone/avante.nvim",
    opts = {
      provider = "copilot",
      mappings = {
        sidebar = {
          switch_windows = "<C-j>",
          reverse_switch_windows = "<C-k>",
        },
      },
    },
  },
}
