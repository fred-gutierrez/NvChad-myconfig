local M = {}

M.treesitter = {
  ensure_installed = {
    "css",
    "vim",
    "javascript",
    "html",
    "typescript",
    "tsx",
    "markdown",
    "markdown_inline",
    "svelte",
    "scss",
    "vue",
    "lua",
    "json",
    "sql"
  },
}

M.mason = {
  ensure_installed = {
    -- LSP's
    "eslint-lsp",
    "svelte-language-server",
    "json-lsp",
    "css-lsp",
    "cssmodules-language-server",
    "html-lsp",
    "lua-language-server",
    "tailwindcss-language-server",
    "typescript-language-server",
    "vue-language-server",
    "clangd",
    -- Linters
    "eslint_d",
    -- Formatters
    "sql-formatter",
    "clang-format",
    "stylua",
    "prettier",
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
