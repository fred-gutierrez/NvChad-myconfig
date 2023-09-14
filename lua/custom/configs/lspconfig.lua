local configs = require "plugins.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = { "quick_lint_js", "tsserver", "volar", "html", "cssls", "cssmodules_ls", "tailwindcss" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- Link to the list of LSP's: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#quick_lint_js
