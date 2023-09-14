-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

local enable_providers = {
  "python3_provider",
  "node_provider",
}

for _, plugin in pairs(enable_providers) do
  vim.g["loaded_" .. plugin] = nil
  vim.cmd("runtime " .. plugin)
end

-- Solves an issue with volta
if vim.fn.executable "volta" == 1 then
  local output = vim.fn.system "volta which neovim-node-host"
  local trimmed_output = vim.fn.trim(output)
  vim.g.node_host_prog = trimmed_output
end
