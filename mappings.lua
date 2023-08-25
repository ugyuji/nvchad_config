---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>|"] = { "<cmd> vertical split<CR>", "Split vertical" },
    ["<leader>-"] = { "<cmd> horizontal split<CR>", "Split horizontal" },
  },
}

-- more keybinds!

M.tmux_navigator = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "Window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "Window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "Window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "Window up" },
  }
}

M.telescope = {
  n = {
    ["<leader>fp"] = {"<cmd> ProjectMgr <CR>", "Open Project Manager"},
  }
}

return M
