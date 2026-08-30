return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },

    opts = {
      formatters_by_ft = {
        python = { "black" },
        rust = { "rustfmt" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        lua = { "stylua" },
        nix = { "nixfmt" },
        java = { "google-java-format" },
      },

      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    },
  },
}
