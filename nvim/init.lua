require 'config.lazy'

vim.opt.shiftwidth = 4
vim.opt.clipboard = 'unnamedplus'
vim.opt.tabstop = 2
vim.opt.number = true
vim.opt.termguicolors = true

vim.keymap.set('n', '<space><space>x', '<cmd>source %<CR>')
vim.keymap.set('n', '<space>x', ':.lua<CR>')
vim.keymap.set('v', '<space>x', ':lua<CR>')

vim.keymap.set('n', '<M-j>', '<cmd>cnext<CR>')
vim.keymap.set('n', '<M-k>', '<cmd>cprev<CR>')

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.diagnostic.config {
  virtual_lines = false,
  virtual_text = true,
  underline = true,
  update_in_insert = true,
  severity_sort = true,
  float = {
    border = 'rounded',
    source = true,
  },
}

local neon = "#39FF14"

vim.api.nvim_set_hl(0, "Cursor", { fg = "#050707", bg = neon })
vim.api.nvim_set_hl(0, "Visual", { fg = "#050707", bg = neon })
vim.api.nvim_set_hl(0, "Search", { fg = "#050707", bg = neon })
vim.api.nvim_set_hl(0, "IncSearch", { fg = "#050707", bg = neon })
vim.api.nvim_set_hl(0, "MatchParen", { fg = "#050707", bg = neon, bold = true })
