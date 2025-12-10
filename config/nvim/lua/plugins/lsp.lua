return {
  "neovim/nvim-lspconfig",
  opts = {
    diagnostics = {
      underline = true,
      update_in_insert = false,
      virtual_text = {
        spacing = 4,
        source = "if_many",
        prefix = "●",
      },
      severity_sort = true,
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = " ",
          [vim.diagnostic.severity.WARN] = " ",
          [vim.diagnostic.severity.HINT] = " ",
          [vim.diagnostic.severity.INFO] = " ",
        },
      },
    },
    inlay_hints = {
      enabled = true,
      exclude = { "vue" },
    },
    codelens = {
      enabled = false,
    },
    folds = {
      enabled = true,
    },
    format = {
      formatting_options = nil,
      timeout_ms = nil,
    },
    servers = {
      ["*"] = {
        capabilities = {
          workspace = {
            fileOperations = {
              didRename = true,
              willRename = true,
            },
          },
        },
        -- stylua: ignore start
        keys = {
          { "<leader>cl", function() Snacks.picker.lsp_config() end, desc = "Lsp Info" },
          { "gd", vim.lsp.buf.definition, desc = "Goto Definition", has = "definition" },
          { "gr", vim.lsp.buf.references, desc = "References", nowait = true },
          { "gI", vim.lsp.buf.implementation, desc = "Goto Implementation" },
          { "gy", vim.lsp.buf.type_definition, desc = "Goto T[y]pe Definition" },
          { "gD", vim.lsp.buf.declaration, desc = "Goto Declaration" },
          { "K", function() return vim.lsp.buf.hover() end, desc = "Hover" },
          { "gK", function() return vim.lsp.buf.signature_help() end, desc = "Signature Help", has = "signatureHelp" },
          { "<c-k>", function() return vim.lsp.buf.signature_help() end, mode = "i", desc = "Signature Help", has = "signatureHelp" },
          { "<leader>ca", vim.lsp.buf.code_action, desc = "Code Action", mode = { "n", "x" }, has = "codeAction" },
          { "<leader>cc", vim.lsp.codelens.run, desc = "Run Codelens", mode = { "n", "x" }, has = "codeLens" },
          { "<leader>cC", vim.lsp.codelens.refresh, desc = "Refresh & Display Codelens", mode = { "n" }, has = "codeLens" },
          { "<leader>cR", function() Snacks.rename.rename_file() end, desc = "Rename File", mode ={"n"}, has = { "workspace/didRenameFiles", "workspace/willRenameFiles" } },
          { "<leader>cr", vim.lsp.buf.rename, desc = "Rename", has = "rename" },
          { "]]", function() Snacks.words.jump(vim.v.count1) end, has = "documentHighlight",
            desc = "Next Reference", enabled = function() return Snacks.words.is_enabled() end },
          { "[[", function() Snacks.words.jump(-vim.v.count1) end, has = "documentHighlight",
            desc = "Prev Reference", enabled = function() return Snacks.words.is_enabled() end },
          { "<a-n>", function() Snacks.words.jump(vim.v.count1, true) end, has = "documentHighlight",
            desc = "Next Reference", enabled = function() return Snacks.words.is_enabled() end },
          { "<a-p>", function() Snacks.words.jump(-vim.v.count1, true) end, has = "documentHighlight",
            desc = "Prev Reference", enabled = function() return Snacks.words.is_enabled() end },
        },
        -- stylua: ignore end
      },
      lua_ls = {
        settings = {
          Lua = {
            workspace = {
              checkThirdParty = false,
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
    -- Helper function to check if client supports a method
    local function supports_method(client, method)
      if type(method) == "table" then
        for _, m in ipairs(method) do
          if client.supports_method(m) then
            return true
          end
        end
        return false
      end
      return client.supports_method(method)
    end

    -- Setup keymaps on LspAttach
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        local bufnr = args.buf

        -- Get keys for this server
        local server_opts = opts.servers[client.name] or {}
        local default_opts = opts.servers["*"] or {}
        local keys = vim.list_extend(vim.deepcopy(default_opts.keys or {}), server_opts.keys or {})

        -- Setup each keymap
        for _, key in ipairs(keys) do
          local modes = key.mode or "n"
          local has = key.has
          local enabled = key.enabled

          -- Check capability requirement
          local has_capability = true
          if has then
            has_capability = supports_method(client, has)
          end

          -- Check enabled condition
          local is_enabled = true
          if enabled and type(enabled) == "function" then
            is_enabled = enabled()
          end

          if has_capability and is_enabled then
            vim.keymap.set(modes, key[1], key[2], {
              buffer = bufnr,
              desc = key.desc,
              nowait = key.nowait,
            })
          end
        end
      end,
    })

    -- Setup inlay hints
    if opts.inlay_hints.enabled then
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          local bufnr = args.buf
          if client.supports_method("textDocument/inlayHint") then
            if
              vim.api.nvim_buf_is_valid(bufnr)
              and vim.bo[bufnr].buftype == ""
              and not vim.tbl_contains(opts.inlay_hints.exclude, vim.bo[bufnr].filetype)
            then
              vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
            end
          end
        end,
      })
    end

    -- Setup code lens
    if opts.codelens.enabled and vim.lsp.codelens then
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          local bufnr = args.buf
          if client.supports_method("textDocument/codeLens") then
            vim.lsp.codelens.refresh()
            vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "InsertLeave" }, {
              buffer = bufnr,
              callback = vim.lsp.codelens.refresh,
            })
          end
        end,
      })
    end

    -- Setup folds
    if opts.folds.enabled then
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if client.supports_method("textDocument/foldingRange") then
            vim.wo.foldmethod = "expr"
            vim.wo.foldexpr = "v:lua.vim.lsp.foldexpr()"
          end
        end,
      })
    end

    -- Configure diagnostics
    vim.diagnostic.config(vim.deepcopy(opts.diagnostics))

    -- Configure "*" (default config for all servers)
    if opts.servers["*"] then
      vim.lsp.config("*", opts.servers["*"])
    end

    -- Setup each LSP server
    for server, config in pairs(opts.servers) do
      if server ~= "*" and type(config) == "table" then
        vim.lsp.config(server, config)
        vim.lsp.enable(server)
      end
    end
  end,
}
