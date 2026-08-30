return {
  {
    "neovim/nvim-lspconfig",

    config = function()
      -- Python
      vim.lsp.enable("basedpyright")

      -- Rust
      vim.lsp.enable("rust_analyzer")

      -- JavaScript / TypeScript
      vim.lsp.enable("ts_ls")

      -- Lua
      vim.lsp.enable("lua_ls")

      -- Nix
      vim.lsp.enable("nil_ls")
    end,
  },
}
