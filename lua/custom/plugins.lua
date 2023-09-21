local plugins = {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- LSP's
        "css-lsp",
        "cssmodules-language-server",
        "html-lsp",
        "lua-language-server",
        "quick-lint-js",
        "tailwindcss-language-server",
        "typescript-language-server",
        "vue-language-server",
        -- DAP's
        "js-debug-adapter",
        -- Linters
        "quick-lint-js",
        -- Formatters
        "sql-formatter",
        "stylua",
        "prettier",
      },
    },
  },
  
}

return plugins
