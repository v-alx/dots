local M = {}

local c = {
  -- Base
  bg     = "#050707",
  bg2    = "#0A1210",

  -- Text
  fg     = "#CFFFE0", -- main text
  fg2    = "#8FEFBA", -- secondary / punctuation
  dim    = "#2A6A46", -- comments / separators

  -- Green identity (soft first; neon reserved)
  neon   = "#39FF14", -- sparingly
  mint   = "#7DEFA9", -- primary accent
  mint2  = "#5FD89A", -- deeper mint

  -- Complements
  teal   = "#2EF2D0",
  teal2  = "#7CFFE8",
  blue   = "#6FB6FF",
  purple = "#C7A6FF",
  amber  = "#FFD27A",

  -- Alerts
  red    = "#FF6B6B",

  none   = "NONE",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.setup()
  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "neongreen"

  -- ===== Base / UI =====
  hi("Normal", { fg = c.fg, bg = c.none })
  hi("NormalNC", { fg = c.fg, bg = c.none })
  hi("EndOfBuffer", { fg = c.bg, bg = c.none })
  hi("Whitespace", { fg = c.dim })
  hi("NonText", { fg = c.dim })

  hi("WinSeparator", { fg = c.dim })
  hi("VertSplit", { fg = c.dim })
  hi("SignColumn", { fg = c.fg, bg = c.none })

  hi("LineNr", { fg = c.dim })
  hi("CursorLineNr", { fg = c.mint, bold = true })

  hi("CursorLine", { bg = c.none })
  hi("CursorColumn", { bg = c.none })
  hi("ColorColumn", { bg = c.none })

  hi("StatusLine", { fg = c.fg, bg = c.none })
  hi("StatusLineNC", { fg = c.fg2, bg = c.none })
  hi("TabLine", { fg = c.fg2, bg = c.none })
  hi("TabLineFill", { fg = c.fg2, bg = c.none })
  hi("TabLineSel", { fg = c.bg, bg = c.mint, bold = true })

  hi("Cursor", { fg = c.bg, bg = c.mint })
  hi("Visual", { fg = c.bg, bg = c.mint2 })
  hi("Search", { fg = c.bg, bg = c.mint })
  hi("IncSearch", { fg = c.bg, bg = c.teal, bold = true })
  hi("MatchParen", { fg = c.bg, bg = c.mint, bold = true })

  hi("NormalFloat", { fg = c.fg, bg = c.none })
  hi("FloatBorder", { fg = c.mint, bg = c.none })

  hi("Pmenu", { fg = c.fg, bg = c.none })
  hi("PmenuSel", { fg = c.bg, bg = c.mint, bold = true })
  hi("PmenuSbar", { bg = c.dim })
  hi("PmenuThumb", { bg = c.mint })

  hi("ErrorMsg", { fg = c.red, bold = true })
  hi("WarningMsg", { fg = c.amber, bold = true })
  hi("MoreMsg", { fg = c.mint })
  hi("Question", { fg = c.mint, bold = true })

  hi("Directory", { fg = c.mint })
  hi("Title", { fg = c.mint, bold = true })

  hi("DiagnosticError", { fg = c.red })
  hi("DiagnosticWarn", { fg = c.amber })
  hi("DiagnosticInfo", { fg = c.blue })
  hi("DiagnosticHint", { fg = c.mint2 })

  hi("DiagnosticUnderlineError", { undercurl = true, sp = c.red })
  hi("DiagnosticUnderlineWarn", { undercurl = true, sp = c.amber })
  hi("DiagnosticUnderlineInfo", { undercurl = true, sp = c.blue })
  hi("DiagnosticUnderlineHint", { undercurl = true, sp = c.mint2 })

  hi("DiffAdd", { fg = c.mint2, bg = c.none })
  hi("DiffChange", { fg = c.amber, bg = c.none })
  hi("DiffDelete", { fg = c.red, bg = c.none })
  hi("DiffText", { fg = c.bg, bg = c.mint })

  hi("GitSignsAdd", { fg = c.mint2 })
  hi("GitSignsChange", { fg = c.amber })
  hi("GitSignsDelete", { fg = c.red })

  hi("Comment", { fg = c.dim, italic = true })

  hi("String", { fg = c.mint2 })
  hi("Character", { fg = c.mint2 })
  hi("Number", { fg = c.teal })
  hi("Boolean", { fg = c.teal })
  hi("Float", { fg = c.teal })
  hi("Constant", { fg = c.teal2 })

  hi("Identifier", { fg = c.fg })
  hi("Function", { fg = c.mint, bold = true })

  hi("Keyword", { fg = c.mint })
  hi("Statement", { fg = c.mint })
  hi("Conditional", { fg = c.mint })
  hi("Repeat", { fg = c.mint })
  hi("Label", { fg = c.mint })
  hi("Operator", { fg = c.fg2 })

  hi("Type", { fg = c.blue })
  hi("StorageClass", { fg = c.blue })
  hi("Structure", { fg = c.blue })
  hi("Typedef", { fg = c.blue })

  hi("Special", { fg = c.purple })
  hi("SpecialChar", { fg = c.purple })
  hi("PreProc", { fg = c.amber })
  hi("Include", { fg = c.amber })
  hi("Define", { fg = c.amber })
  hi("Macro", { fg = c.amber })

  hi("@comment", { link = "Comment" })
  hi("@string", { link = "String" })
  hi("@number", { link = "Number" })
  hi("@boolean", { link = "Boolean" })
  hi("@function", { link = "Function" })
  hi("@function.builtin", { fg = c.mint2, bold = true })
  hi("@keyword", { link = "Keyword" })
  hi("@keyword.return", { fg = c.mint, bold = true })
  hi("@type", { link = "Type" })
  hi("@type.builtin", { fg = c.blue, italic = true })
  hi("@variable", { fg = c.fg })
  hi("@variable.builtin", { fg = c.fg2 })
  hi("@property", { fg = c.fg2 })
  hi("@field", { fg = c.fg2 })
  hi("@punctuation", { fg = c.fg2 })
  hi("@operator", { link = "Operator" })

  hi("TelescopeBorder", { fg = c.mint, bg = c.none })
  hi("TelescopeNormal", { fg = c.fg, bg = c.none })
  hi("TelescopePromptBorder", { fg = c.mint, bg = c.none })
  hi("TelescopePromptNormal", { fg = c.fg, bg = c.none })
  hi("TelescopeSelection", { fg = c.bg, bg = c.mint })
  hi("TelescopeSelectionCaret", { fg = c.bg, bg = c.mint })

  hi("TelescopeTitle", { fg = c.bg, bg = c.mint, bold = true })

  hi("CmpItemAbbr", { fg = c.fg })
  hi("CmpItemAbbrMatch", { fg = c.mint, bold = true })
  hi("CmpItemAbbrMatchFuzzy", { fg = c.teal, bold = true })
  hi("CmpItemMenu", { fg = c.dim })
end

M.setup()
return M
