{inputs, ...}: {
  imports = [inputs.nvf.homeManagerModules.default];
  programs.nvf = {
    enable = true;
    settings.vim = {
      viAlias = false;

      vimAlias = true;

      theme = {
        enable = true;
        name = "tokyonight";
        style = "night";
      };

      options = {
        tabstop = 2;
        shiftwidth = 2;
        wrap = false;
      };

      clipboard = {
        enable = true;
        registers = "unnamedplus";
        providers = {
          wl-copy = {
            enable = true;
          };
          xsel = {
            enable = true;
          };
        };
      };

      maps = {
        normal = {
          "<leader>e" = {
            action = "<CMD>Neotree toggle<CR>";
            silent = false;
          };
        };
      };

      diagnostics = {
        enable = true;
        config = {
          virtual_lines = {
            enable = true;
          };
          underline = true;
        };
      };

      keymaps = [
        {
          key = "<Esc>";
          mode = ["n"];
          action = ":nohl<CR>";
          desc = "Clear search highlights";
        }
        {
          key = "<leader>ff";
          mode = ["n"];
          action = "<cmd>Telescope find_files<cr>";
          desc = "Search files by name";
        }
        {
          key = "<leader>lg";
          mode = ["n"];
          action = "<cmd>Telescope live_grep<cr>";
          desc = "Search files by contents";
        }
        {
          key = "<leader>fe";
          mode = ["n"];
          action = "<cmd>Neotree toggle<cr>";
          desc = "File browser toggle";
        }
        {
          key = "<C-h>";
          mode = ["i"];
          action = "<Left>";
          desc = "Move left in insert mode";
        }
        {
          key = "<C-j>";
          mode = ["i"];
          action = "<Down>";
          desc = "Move down in insert mode";
        }
        {
          key = "<C-k>";
          mode = ["i"];
          action = "<Up>";
          desc = "Move up in insert mode";
        }
        {
          key = "<C-l>";
          mode = ["i"];
          action = "<Right>";
          desc = "Move right in insert mode";
        }
        {
          key = "<leader>dj";
          mode = ["n"];
          action = "<cmd>Lspsaga diagnostic_jump_next<CR>";
          desc = "Go to next diagnostic";
        }
        {
          key = "<leader>dk";
          mode = ["n"];
          action = "<cmd>Lspsaga diagnostic_jump_prev<CR>";
          desc = "Go to previous diagnostic";
        }
        {
          key = "<leader>dl";
          mode = ["n"];
          action = "<cmd>Lspsaga show_line_diagnostics<CR>";
          desc = "Show diagnostic details";
        }
        {
          key = "<leader>dt";
          mode = ["n"];
          action = "<cmd>Trouble diagnostics toggle<cr>";
          desc = "Toggle diagnostics list";
        }
        {
          key = "<leader>t";
          mode = ["n"];
          action = "<cmd>ToggleTerm<CR>";
          desc = "Toggle terminal";
        }
      ];

      telescope = {
        enable = true;
      };

      lsp = {
        enable = true;
        formatOnSave = true;
        lspkind = {
          enable = false;
        };
        lightbulb = {
          enable = false; #even with this disabled enabling lspaga sets lightbulb on
        };
        lspsaga = {
          enable = false; #when enabled getting annoying lightbulb
        };
        trouble = {
          enable = true;
        };
        lspSignature = {
          enable = false;
        };
        otter-nvim = {
          enable = false;
        };
        nvim-docs-view = {
          enable = false;
        };
      };

      languages = {
        enableFormat = true;
        enableTreesitter = true;
        enableExtraDiagnostics = true;

        nix = {
          enable = true;
          lsp = {
            server = "nil";
          };
        };
      };

      visuals = {
        nvim-web-devicons = {
          enable = true;
        };
        nvim-cursorline = {
          enable = true;
        };
        fidget-nvim = {
          enable = true;
        };
        indent-blankline = {
          enable = true;
        };
      };

      statusline.lualine = {
        enable = true;
      };

      autopairs = {
        nvim-autopairs = {
          enable = true;
        };
      };

      autocomplete = {
        blink-cmp = {
          enable = true;
          friendly-snippets.enable = true;
          setupOpts = {
            completion.documentation.auto_show_delay_ms = 50;
          };
        };
      };

      snippets = {
        luasnip = {
          enable = true;
        };
      };

      treesitter = {
        context = {
          enable = false;
        };
      };

      binds = {
        whichKey = {
          enable = true;
        };
      };

      git = {
        enable = true;
        gitsigns = {
          enable = true;
          codeActions = {
            enable = false;
          };
        };
      };

      dashboard = {
        dashboard-nvim = {
          enable = true;
        };
      };

      filetree = {
        neo-tree = {
          enable = true;
        };
      };

      notify = {
        nvim-notify = {
          enable = true;
        };
      };

      utility = {
        surround = {
          enable = true;
        };
      };

      ui = {
        borders = {
          enable = true;
        };

        noice = {
          enable = true;
        };

        smartcolumn = {
          enable = true;
        };
      };

      terminal = {
        toggleterm = {
          enable = true;
          lazygit = {
            enable = true;
          };
        };
      };

      session = {
        nvim-session-manager = {
          enable = false;
        };
      };

      comments = {
        comment-nvim.enable = true;
      };
    };
  };
}
