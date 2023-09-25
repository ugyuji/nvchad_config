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
    ["<leader>fm"] = { "<cmd> Telescope media_files<CR>", "Find media files" },
  },
}

M.lsp = {
  n = {
    ["gR"] = { "<cmd> Telescope lsp_references<CR>", "Show LSP References" },
    ["gd"] = { "<cmd> Telescope lsp_definitions<CR>", "Show LSP Definitions" },
    ["gi"] = { "<cmd> Telescope lsp_implementations<CR>", "Show LSP Implementations" },
    ["gt"] = { "<cmd> Telescope lsp_type_definitions<CR>", "Show LSP Type Definitions" },
    ["<leader>rn"] = {
      function()
        vim.lsp.buf.rename()
      end,
    },
    ["<leader>D"] = { "<cmd> Telescope diagnostics bufnr=0<CR>", "Show Diagnostics for File" },
    ["<leader>d"] = {
      function()
        vim.diagnostic.open_float()
      end,
    },
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
    ["<leader>bp"] = { "<cmd> BrowserPreview<CR>", "Open File in Browser" },
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

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint<CR>", "Add Breakpoint at Line" },
    ["<leader>dr"] = { "<cmd> DapContinue<CR>", "Run or Continue The Debugger" },
    ["<leader>dt"] = { "<cmd> DapTerminate<CR>", "Terminate The Debugger" },
  },
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require("dap-python").test_method()
      end,
    },
  },
}

return M
