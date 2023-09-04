local dap = require "dap"

require("dap-vscode-js").setup {
  -- debugger_path = vim.fn.stdpath "data" .. "/lazy/vscode-js-debug",
  node_path = os.getenv "HOME" .. "/.volta/bin/node",
  debugger_path = os.getenv "HOME" .. "/.local/share/nvim/lazy/vscode-js-debug",
  debugger_cmd = { "js-debug-adapter" },
  adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" }, -- which adapters to register in nvim-dap
}

require("dap").adapters["pwa-node"] = {
  type = "server",
  host = "localhost",
  port = "${port}",
  executable = {
    command = "js-debug-adapter", -- As I'm using mason, this will be in the path
    args = { "${port}" },
  },
}

for _, language in ipairs { "typescript", "javascript", "typescriptreact" } do
  dap.configurations[language] = {
    {
      type = "pwa-node",
      request = "launch",
      name = "Launch file",
      program = "${file}",
      cwd = "${workspaceFolder}",
    },
    {
      type = "pwa-node",
      request = "attach",
      name = "Attach",
      processId = require("dap.utils").pick_process,
      cwd = "${workspaceFolder}",
    },
    {
      type = "pwa-node",
      request = "launch",
      name = "Debug Jest Tests",
      -- trace = true, -- include debugger info
      runtimeExecutable = "node",
      runtimeArgs = {
        "./node_modules/jest/bin/jest.js",
        "--runInBand",
      },
      rootPath = "${workspaceFolder}",
      cwd = "${workspaceFolder}",
      console = "integratedTerminal",
      internalConsoleOptions = "neverOpen",
    },
  }
end
