local configs = require "plugins.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"

-- Link to the list of LSP's: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#quick_lint_js
lspconfig.quick_lint_js.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  fileTypes = { "javascript" },
  update_in_insert = true,
}
 
lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  fileTypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
  update_in_insert = true,
}

lspconfig.volar.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  fileTypes = { "vue" },
  update_in_insert = true,
} -- vue-language-server

lspconfig.html.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  fileTypes = { "html" },
  update_in_insert = true,
}

lspconfig.cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  fileTypes = { "css", "scss", "less" },
  update_in_insert = true,
}

lspconfig.cssmodules_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  fileTypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  update_in_insert = true,
}

lspconfig.tailwindcss.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  fileTypes = {
    "aspnetcorerazor",
    "astro",
    "astro-markdown",
    "blade",
    "clojure",
    "django-html",
    "htmldjango",
    "edge",
    "eelixir",
    "elixir",
    "ejs",
    "erb",
    "eruby",
    "gohtml",
    "haml",
    "handlebars",
    "hbs",
    "html",
    "html-eex",
    "heex",
    "jade",
    "leaf",
    "liquid",
    "markdown",
    "mdx",
    "mustache",
    "njk",
    "nunjucks",
    "php",
    "razor",
    "slim",
    "twig",
    "css",
    "less",
    "postcss",
    "sass",
    "scss",
    "stylus",
    "sugarss",
    "javascript",
    "javascriptreact",
    "reason",
    "rescript",
    "typescript",
    "typescriptreact",
    "vue",
    "svelte",
  },
  update_in_insert = true,
}
