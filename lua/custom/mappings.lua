local M = {}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
  },
}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
    -- ["<leader>h"] = "",
  },
}

-- Your custom mappings
M.abc = {
  v = {
    ["K"] = { ":m '>+1<CR>gv=gv'", "Move a Line Up" },
    ["J"] = { ":m '<-2<CR>gv=gv'", "Move a Line Down" },
  },

  n = {
    -- ["<C-n>"] = {"<cmd> Telescope <CR>", "Telescope"},
    -- ["<C-s>"] = {":Telescope Files <CR>", "Telescope Files"}
    ["<leader>gs"] = { "<cmd> Telescope git_status <CR>", "Git status" },
    ["<C-f>"] = { "<cmd>silent !tmux neww tmux-sessionizer<CR>", "Search folders" },
  },

  i = {
    -- ["jk"] = { "<escapeESC>", "escape insert mode" , opts = { nowait = true }},
  },
}

return M
