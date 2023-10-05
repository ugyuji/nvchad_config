local conform = require "conform"

local formatters_by_ft = {

  -- webdev stuff
  javascript = { "deno_fmt" },
  typescript = { "deno_fmt" },
  javascriptreact = { "deno_fmt" },
  typescriptreact = { "deno_fmt" },
  svelte = { "prettier" },
  css = { "prettier" },
  html = { "prettier" },
  json = { "prettier" },
  yaml = { "prettier" },
  markdown = { "prettier" },
  graphql = { "prettier" },

  -- lua
  lua = { "stylua" },

  -- php
  php = { "phpcsfixer" },

  -- python
  python = { "isort", "black" },

  -- terraform
  terraform = { "terraform_fmt" },
}

local format_on_save = {
  lsp_fallback = true,
  async = false,
  timeout_ms = 1000,
}

conform.setup {
  formatters_by_ft = formatters_by_ft,
  format_on_save = format_on_save,
}

vim.keymap.set({ "n", "v" }, "<leader>mp", function()
  conform.format {
    lsp_fallback = true,
    async = false,
    timeout_ms = 1000,
  }
end, { desc = "Format file or range (in visual mode)" })
