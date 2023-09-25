local M = {}

local cmp_ok, cmp = pcall(require, "cmp")

if cmp_ok then
  M.cmp = {
    mapping = cmp.mapping.preset.insert {
      ["<C-k"] = cmp.mapping.select_prev_item(),
      ["<C-j"] = cmp.mapping.select_next_item(),
    },
  }
end

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
    "bash",
    "regex",
    "terraform",
    "hcl",
    "yaml",
    "dockerfile",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python",
    -- },
  },
  autotag = {
    enable = true,
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
    "eslint-lsp",
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

    -- terraform stuff
    "terraform-ls",
    "tflint",
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
    vimgrep_arguments = {
      "rg",
      "-L",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--no-ignore-vcs",
    },
    prompt_prefix = "   ",
    file_ignore_patterns = {
      "node_modules/",
      "vendor/",
      ".git/",
    },
  },
  pickers = {
    find_files = {
      find_command = {
        "fd",
        "--hidden",
        "--glob",
        "--no-ignore",
        "",
      },
    },
  },
}

return M
