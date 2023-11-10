-- custom/configs/null-ls.lua

local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  formatting.stylua,
  formatting.prettier,
  formatting.prettier.with {
    -- https://github.com/sveltejs/prettier-plugin-svelte
    filetypes = { "svelte" },
  },
  formatting.sql_formatter,
  formatting.clang_format,

  lint.shellcheck,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
