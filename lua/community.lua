-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  -- import/override with your plugins folder
  "AstroNvim/astrocommunity",

  -- recipes
  { import = "astrocommunity.recipes.heirline-mode-text-statusline" },
  { import = "astrocommunity.recipes.heirline-nvchad-statusline" },
  { import = "astrocommunity.recipes.heirline-vscode-winbar" },

  -- editing-support
  { import = "astrocommunity.indent.indent-rainbowline" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },

  -- markdown
  { import = "astrocommunity.markdown-and-latex.markview-nvim" },

  -- git
  { import = "astrocommunity.git.diffview-nvim" },
  { import = "astrocommunity.git.octo-nvim" },

  -- lsp
  { import = "astrocommunity.lsp.lsp-signature-nvim" },

  -- pack
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.python-ruff" },
}
