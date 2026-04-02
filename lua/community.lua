-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  { "AstroNvim/astrocommunity" },

  -- recipes
  { import = "astrocommunity.recipes.heirline-mode-text-statusline" },
  { import = "astrocommunity.recipes.heirline-nvchad-statusline" },
  { import = "astrocommunity.recipes.heirline-vscode-winbar" },
  { import = "astrocommunity.recipes.vscode" },

  -- editing-support
  { import = "astrocommunity.editing-support.dial-nvim" },
  { import = "astrocommunity.editing-support.neogen" },

  -- file-explorer
  { import = "astrocommunity.file-explorer.oil-nvim" },

  -- markdown
  { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },

  -- git
  { import = "astrocommunity.git.diffview-nvim" },
  { import = "astrocommunity.git.octo-nvim" },

  -- icon
  { import = "astrocommunity.icon.mini-icons" },

  -- pack
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.python.base" },
  { import = "astrocommunity.pack.python.basedpyright" },
  { import = "astrocommunity.pack.python.ruff" },
  { import = "astrocommunity.pack.markdown", enabled = false },
  { import = "astrocommunity.pack.sql", enabled = false },

  -- scrolling
  { import = "astrocommunity.scrolling.nvim-scrollbar" },

  -- indent
  { import = "astrocommunity.indent.indent-rainbowline" },

  -- utility
  { import = "astrocommunity.utility.noice-nvim" },

  -- media
  { import = "astrocommunity.media.image-nvim" },
}
