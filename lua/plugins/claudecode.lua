if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  {
    "coder/claudecode.nvim",
    dependencies = {
      { "folke/snacks.nvim" },
      { "AstroNvim/astroui", opts = { isons = { Claude = "󱙺" } } },
      {
        "AstroNvim/astrocore",
        opts = function(_, opts)
          local maps = opts.mappings
          local prefix = "<Leader>C"
          local icon = require("astroui").get_icon("Claude", 1, true)

          maps.n[prefix] = { desc = icon .. "Claude" }

          maps.n[prefix .. "t"] = { "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" }
          maps.n[prefix .. "f"] = { "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude" }
          maps.n[prefix .. "r"] = { "<cmd>ClaudeCode --resume<cr>", desc = "Resume Claude" }
          maps.n[prefix .. "c"] = { "<cmd>ClaudeCode --continue<cr>", desc = "Continue Claude" }
          maps.n[prefix .. "m"] = { "<cmd>ClaudeCodeSelectModel<cr>", desc = "Select model" }

          maps.n[prefix .. "b"] = { "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" }
          maps.n[prefix .. "s"] = { "<cmd>ClaudeCodeSend<cr>", desc = "Send selection" }

          maps.n[prefix .. "y"] = { "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" }
          maps.n[prefix .. "n"] = { "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Deny diff" }

          vim.api.nvim_create_autocmd("FileType", {
            pattern = { "NvimTree", "neo-tree", "oil", "minifiles" },
            callback = function(ev)
              vim.keymap.set(
                "n",
                prefix .. "a",
                "<cmd>ClaudeCodeTreeAdd<cr>",
                { buffer = ev.buf, desc = "Add file from tree" }
              )
            end,
          })
        end,
      },
    },
    cmd = {
      "ClaudeCode",
      "ClaudeCodeSend",
      "ClaudeCodeAdd",
      "ClaudeCodeSelectModel",
      "ClaudeCodeDiffAccept",
      "ClaudeCodeDiffDeny",
      "ClaudeCodeTreeAdd",
    },
    opts = {},
  },
}
