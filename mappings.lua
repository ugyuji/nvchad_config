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
  },
}

M.telescope = {
  n = {
    ["<leader>fp"] = { "<cmd> ProjectMgr<CR>", "Open Project Manager" },
  },
}

M.markdown_preview = {
  n = {
    ["<leader>mp"] = { "<cmd> MarkdownPreview<CR>", "Toggle Markdown Preview" },
  },
}

M.web_tool = {
  n = {
    ["<leader>bo"] = { "<cmd> BrowserOpen<CR>", "Open Browswer Window" },
  },
}

M.aerial = {
  n = {
    ["<leader>a"] = { "<cmd> AerialToggle<CR>", "Toggle Aerial" },
  },
}

M.minimap = {
  n = {
    ["<leader>mt"] = { "<cmd> MinimapToggle<CR>", "Toggle Minimap" },
  },
}

M.copilot = {
  i = {
    ["<C-l>"] = {
      function()
        vim.fn.feedkeys(vim.fn["copilot#Accept"](), "")
      end,
      "Copilot Accept",
      { replace_keycodes = true, nowait = true, silent = true, expr = true, noremap = true },
    },
  },
}

return M
