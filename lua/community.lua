-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- colorschema
  -- { import = "astrocommunity.colorscheme.onedarkpro-nvim" },
  -- { import = "astrocommunity.colorscheme.github-nvim-theme" },

  -- AI
  { import = "astrocommunity.completion.avante-nvim" },

  -- recipes
  { import = "astrocommunity.recipes.cache-colorscheme" },
  { import = "astrocommunity.recipes.heirline-mode-text-statusline" },
  { import = "astrocommunity.recipes.heirline-nvchad-statusline" },
  { import = "astrocommunity.recipes.heirline-vscode-winbar" },

  -- editing-support
  { import = "astrocommunity.editing-support.neogen" },

  -- markdown
  { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },

  -- git
  { import = "astrocommunity.git.diffview-nvim" },

  -- icon
  { import = "astrocommunity.icon.mini-icons" },

  -- lsp
  { import = "astrocommunity.lsp.lsp-signature-nvim" },

  -- pack
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.python-ruff" },
  -- { import = "astrocommunity.pack.markdown" },

  -- scrolling
  { import = "astrocommunity.scrolling.nvim-scrollbar" },

  -- indent
  { import = "astrocommunity.indent.indent-rainbowline" },

  -- utility
  { import = "astrocommunity.utility.noice-nvim" },
}
