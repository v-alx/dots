return {
  {
    "quarto-dev/quarto-nvim",
    ft = { "quarto" },
    dependencies = {
      "jmbuhr/otter.nvim",
      "nvim-treesitter/nvim-treesitter",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("quarto").setup({
        lspFeatures = {
          enabled = true,
          languages = { "python", "bash", "lua", "r" },
          chunks = "all",
          diagnostics = {
            enabled = true,
            triggers = { "BufWritePost" },
          },
          completion = {
            enabled = true,
          },
        },
        codeRunner = {
          enabled = true,
          default_method = "molten",
        },
      })

      local runner = require("quarto.runner")
      vim.keymap.set("n", "<leader>rc", runner.run_cell, { desc = "Run Quarto cell", silent = true })
      vim.keymap.set("n", "<leader>ra", runner.run_above, { desc = "Run cell and above", silent = true })
      vim.keymap.set("n", "<leader>rA", function() runner.run_all(true) end, { desc = "Run all cells", silent = true })
      vim.keymap.set("n", "<leader>rl", runner.run_line, { desc = "Run line", silent = true })
    end,
  }
}
