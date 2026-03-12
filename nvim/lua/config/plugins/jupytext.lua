return {
  {
    "goerz/jupytext.nvim",
    version = "0.2.0",
    event = { "BufReadPre *.ipynb", "BufNewFile *.ipynb", "BufReadPre *.qmd", "BufNewFile *.qmd" },
    opts = function()
      local jupytext = vim.fn.exepath("jupytext")
      if jupytext == "" then
        jupytext = vim.fs.joinpath(vim.fn.expand("~"), ".venvs", "nvim", "bin", "jupytext")
      end

      return {
        jupytext = jupytext,
        format = "qmd",
        filetype = "quarto",
        autosync = true,
      }
    end,
  }
}
