return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      enabled = true,
      sources = {
        files = {
          hidden = true,
          ignored = true,
          exclude = { "node_modules", ".git", "vendor" },
        },
      },
    },
    explorer = {
      enabled = true,
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
          exclude = { "node_modules", ".git", "vendor" },
        },
      },
    },
  },
  -- stylua: ignore
  keys = {
    -- Top Pickers & Explorer
    { "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart Find Files", },
    { "<leader>,", function() Snacks.picker.buffers() end, desc = "Buffers", },
    { "<leader>/", function() Snacks.picker.grep() end, desc = "Grep", },
    { "<leader>:", function() Snacks.picker.command_history() end, desc = "Command History", },
    { "<leader>n", function() Snacks.picker.notifications() end, desc = "Notification History", },
    { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer", },
  },
}
