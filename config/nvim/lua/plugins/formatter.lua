return {
  "stevearc/conform.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  event = { "BufWritePre" },
  cmd = "ConformInfo",
  opts = {
    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback",
    },
    formatters_by_ft = {
      lua = { "stylua" },
      php = { "pint" },
      blade = { "prettier" },
      nix = { "nixfmt" },
      go = { "gofumpt", "goimports" },
    },
  },
}
