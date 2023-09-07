---@type ChadrcConfig
local M = {}
local opt = vim.opt

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

-- Options
opt.relativenumber = true
opt.number = true

M.ui = {
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "one_light" },

  transparency = true,

  hl_override = highlights.override,
  hl_add = highlights.add,

  telescope = { style = "bordered" },

  statusline = {
    theme = "vscode_colored", -- default/vscode/vscode_colored/minimal
    separator_style = "default", -- default/round/block/arrow
    overriden_modules = nil,
  },

  nvdash = {
    load_on_startup = true,
    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
