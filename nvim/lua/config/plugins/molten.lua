return {
  {
    "benlubas/molten-nvim",
    dependencies = { "3rd/image.nvim" },
    build = ":UpdateRemotePlugins",
    init = function()
      vim.g.molten_image_provider = "image.nvim"
      vim.g.molten_image_location = "both"
      vim.g.molten_wrap_output = true
      vim.g.molten_virt_text_output = true
      vim.g.molten_virt_lines_off_by_1 = true
      vim.g.molten_virt_text_max_lines = 20
      vim.g.molten_output_win_max_height = 30
      vim.g.molten_auto_open_output = false
      vim.g.molten_output_show_more = true
      vim.g.molten_output_win_hide_on_leave = false

      vim.keymap.set("n", "<leader>mip", "<Cmd>MoltenInit nvim-python<CR>", { desc = "Molten init Python", silent = true })
      vim.keymap.set("n", "<leader>mib", "<Cmd>MoltenInit bash<CR>", { desc = "Molten init Bash", silent = true })
      vim.keymap.set("n", "<leader>oo", function()
        vim.cmd("MoltenShowOutput")
        vim.cmd("noautocmd MoltenEnterOutput")
      end, { desc = "Open output", silent = true })
      vim.keymap.set("n", "<leader>oh", "<Cmd>MoltenHideOutput<CR>", { desc = "Hide output", silent = true })
    end,
  }
}
