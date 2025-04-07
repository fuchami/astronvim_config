-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- colorschema
  -- { import = "astrocommunity.colorscheme.onedarkpro-nvim" },

  -- recipes
  { import = "astrocommunity.recipes.heirline-mode-text-statusline" },
  { import = "astrocommunity.recipes.heirline-nvchad-statusline" },
  { import = "astrocommunity.recipes.heirline-vscode-winbar" },

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

  -- scrolling
  { import = "astrocommunity.scrolling.nvim-scrollbar" },

  -- utility
  { import = "astrocommunity.utility.noice-nvim" },
}
