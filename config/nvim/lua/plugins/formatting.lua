return {
  "stevearc/conform.nvim",
  lazy = true,
  cmd = "ConformInfo",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      php = { "pint" },
      blade = { "prettier" },
      nix = { "nixfmt" },
      go = { "gofumpt", "goimports" },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback",
    },
  },
}
