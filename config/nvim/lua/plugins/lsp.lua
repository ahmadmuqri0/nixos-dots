return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      lua_ls = {
        settings = {
          Lua = {
            workspace = {
              checkThirdParty = false,
              library = vim.api.nvim_get_runtime_file("", true),
            },
            codeLens = {
              enable = true,
            },
            completion = {
              callSnippet = "Replace",
            },
            doc = {
              privateName = { "^_" },
            },
            hint = {
              enable = true,
              setType = false,
              paramType = true,
              paramName = "Disable",
              semicolon = "Disable",
              arrayIndex = "Disable",
            },
          },
        },
      },
      nixd = {
        settings = {
          nixd = {
            nixpkgs = {
              expr = "import (builtins.getFlake(toString ./.)).inputs.nixpkgs { }",
            },
            formatting = {
              command = { "nixfmt" },
            },
            options = {
              nixos = {
                expr = "let flake = builtins.getFlake(toString ./.); in flake.nixosConfigurations.artemis.options",
              },
              home_manager = {
                expr = "let flake = builtins.getFlake(toString ./.); in flake.nixosConfigurations.artemis.options.home-manager.users.type.getSubOptions []",
              },
            },
          },
        },
      },
    },
  },
  config = function(_, opts)
    -- Setup each LSP server
    for server, config in pairs(opts.servers) do
      vim.lsp.config(server, config)
      vim.lsp.enable(server)
    end
  end,
}
