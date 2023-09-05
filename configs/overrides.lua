local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "scss",
    "javascript",
    "typescript",
    "tsx",
    "json",
    "dockerfile",
    "c",
    "markdown",
    "markdown_inline",
    "python",
    "php",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python",
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "js-debug-adapter",
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- php
    "php-cs-fixer",
    "phpstan",
    "intelephense",

    -- python stuff
    "debugpy",
    "black",
    "mypy",
    "ruff",
    "pyright",

    -- c/cpp stuff
    "clangd",
    "clang-format",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
    ignore = false,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
      glyphs = {
        folder = {
          default = "󰉋",
          empty = "",
          empty_open = "",
          open = "󰝰",
          arrow_open = "",
          arrow_closed = "",
        },
      },
    },
  },
  filters = {
    dotfiles = false,
  },
}

M.telescope = {
  defaults = {
    prompt_prefix = "   ",
  },
}

return M
