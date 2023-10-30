local plugins = {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
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
        -- DAP's
        -- Linters
        "eslint_d",
        -- Formatters
        "sql-formatter",
        "stylua",
        "prettier",
      },
    },
  },
}

return plugins
