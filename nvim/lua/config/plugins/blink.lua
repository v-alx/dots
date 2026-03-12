return {
  'saghen/blink.cmp',
  dependencies = {
    'L3MON4D3/LuaSnip',
  },
  version = '1.*',
  opts = {
    keymap = { preset = 'super-tab' },
    snippets = {
      preset = 'luasnip',
    },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono',
    },
    completion = { documentation = { auto_show = true } },
    signature = { enabled = true },
    fuzzy = { implementation = 'prefer_rust_with_warning' },
  },
  opts_extend = { 'sources.default' },
}
