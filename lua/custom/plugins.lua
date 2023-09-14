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
  {
    "hrsh7th/nvim-cmp",
    opts = {
      sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "nvim_lua" },
        { name = "path" },
        { name = "cmp_tabnine" },
      },
    },

    dependencies = {
      {
        "tzachar/cmp-tabnine",
        build = "powershell ./install.ps1",
        config = function()
          local tabnine = require "cmp_tabnine.config"
          tabnine:setup {
            disable_auto_comment = true,
            accept_keymap = "<Tab>",
            dismiss_keymap = "<C-]>",
            debounce_ms = 800,
            suggestion_color = { gui = "#808080", cterm = 244 },
            exclude_filetypes = { "TelescopePrompt" },
            log_file_path = nil, -- absolute path to Tabnine log file
          } -- put your options here
        end,
      },
    },
  },
}

return plugins
