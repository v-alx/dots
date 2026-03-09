return {
  "zk-org/zk-nvim",
  config = function()
    require("zk").setup({
      -- optional: if you want to force filetypes (see note below)
      -- lsp = { config = { filetypes = { "markdown" } } },
    })
  end,
}
