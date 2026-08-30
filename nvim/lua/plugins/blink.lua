return {
  {
    "saghen/blink.cmp",

    dependencies = {
      "saghen/blink.lib",
      "rafamadriz/friendly-snippets",
    },

    opts = {
      keymap = {
        preset = "none",

        ["<CR>"] = {
          "accept",
          "fallback",
        },

        ["<Tab>"] = {
          "select_next",
          "fallback",
        },

        ["<S-Tab>"] = {
          "select_prev",
          "fallback",
        },

        ["<C-Space>"] = {
          "show",
          "show_documentation",
          "hide_documentation",
        },

        ["<C-n>"] = {
          "select_next",
          "fallback",
        },

        ["<C-p>"] = {
          "select_prev",
          "fallback",
        },

        ["<C-e>"] = {
          "hide",
          "fallback",
        },
      },

      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 200,
        },
      },

      sources = {
        default = {
          "lsp",
          "path",
          "snippets",
          "buffer",
        },
      },

      fuzzy = {
        implementation = "lua",
      },
    },
  },
}
