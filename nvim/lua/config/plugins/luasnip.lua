return {
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
      local vscode_loader = require("luasnip.loaders.from_vscode")
      vscode_loader.lazy_load()
      vscode_loader.lazy_load({
        paths = { vim.fs.joinpath(vim.fn.stdpath("config"), "snippets") },
      })
    end,
  }
}
