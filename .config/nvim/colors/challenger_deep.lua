-- Challenger Deep Neovim colorscheme
-- Based on the Challenger Deep Ghostty terminal palette.

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.g.colors_name = "challenger_deep"

local colors = {
  -- Terminal palette
  black = "#141228",
  red = "#ff5458",
  green = "#62d196",
  yellow = "#ffb378",
  blue = "#65b2ff",
  magenta = "#906cff",
  cyan = "#63f2f1",
  white = "#a6b3cc",

  -- Bright terminal palette
  bright_black = "#565575",
  bright_red = "#ff8080",
  bright_green = "#95ffa4",
  bright_yellow = "#ffe9aa",
  bright_blue = "#91ddff",
  bright_magenta = "#c991e1",
  bright_cyan = "#aaffe4",
  bright_white = "#cbe3e7",

  -- Editor
  background = "#1e1c31",
  foreground = "#cbe1e7",

  -- Cursor
  cursor = "#fbfcfc",
  cursor_text = "#ff271d",

  -- Selection
  selection_background = "#cbe1e7",
  selection_foreground = "#1e1c31",

  -- Derived UI colors
  cursor_line = "#25233b",
  border = "#3a3852",
  muted = "#565575",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- ============================================================================
-- Editor
-- ============================================================================

hi("Normal", { fg = colors.foreground, bg = colors.background })
hi("NormalFloat", { fg = colors.foreground, bg = colors.black })
hi("NormalNC", { fg = colors.foreground, bg = colors.background })

hi("Cursor", { fg = colors.cursor_text, bg = colors.cursor })
hi("lCursor", { fg = colors.cursor_text, bg = colors.cursor })
hi("CursorIM", { fg = colors.cursor_text, bg = colors.cursor })

hi("Visual", { fg = colors.selection_foreground, bg = colors.selection_background })
hi("VisualNOS", { fg = colors.selection_foreground, bg = colors.selection_background })

hi("Search", { fg = colors.black, bg = colors.yellow })
hi("IncSearch", { fg = colors.black, bg = colors.red })
hi("CurSearch", { fg = colors.black, bg = colors.yellow })

hi("LineNr", { fg = colors.muted })
hi("CursorLineNr", { fg = colors.bright_yellow, bold = true })

hi("CursorLine", { bg = colors.cursor_line })
hi("CursorColumn", { bg = colors.cursor_line })
hi("ColorColumn", { bg = colors.cursor_line })

hi("SignColumn", { fg = colors.muted, bg = colors.background })

hi("Folded", { fg = colors.muted, bg = colors.background })
hi("FoldColumn", { fg = colors.muted, bg = colors.background })

hi("NonText", { fg = colors.muted })
hi("Whitespace", { fg = colors.muted })
hi("SpecialKey", { fg = colors.muted })

hi("EndOfBuffer", { fg = colors.background })

-- ============================================================================
-- Status / Tab / Window UI
-- ============================================================================

hi("StatusLine", { fg = colors.foreground, bg = colors.border })
hi("StatusLineNC", { fg = colors.muted, bg = colors.background })

hi("WinSeparator", { fg = colors.border })
hi("VertSplit", { fg = colors.border })

hi("TabLine", { fg = colors.muted, bg = colors.background })
hi("TabLineFill", { bg = colors.background })
hi("TabLineSel", { fg = colors.background, bg = colors.foreground, bold = true })

hi("Title", { fg = colors.bright_yellow, bold = true })

hi("Directory", { fg = colors.blue })
hi("Question", { fg = colors.green })
hi("MoreMsg", { fg = colors.green })
hi("ModeMsg", { fg = colors.foreground, bold = true })
hi("WarningMsg", { fg = colors.yellow })
hi("ErrorMsg", { fg = colors.red, bold = true })

-- ============================================================================
-- Popup menus
-- ============================================================================

hi("Pmenu", { fg = colors.foreground, bg = colors.black })
hi("PmenuSel", { fg = colors.selection_foreground, bg = colors.selection_background })
hi("PmenuSbar", { bg = colors.border })
hi("PmenuThumb", { bg = colors.muted })

hi("FloatBorder", { fg = colors.border, bg = colors.background })
hi("FloatTitle", { fg = colors.bright_yellow, bg = colors.background, bold = true })

-- ============================================================================
-- Syntax
-- ============================================================================

hi("Comment", { fg = colors.muted, italic = true })

hi("Constant", { fg = colors.magenta })
hi("String", { fg = colors.green })
hi("Character", { fg = colors.green })
hi("Number", { fg = colors.magenta })
hi("Boolean", { fg = colors.magenta })
hi("Float", { fg = colors.magenta })

hi("Identifier", { fg = colors.foreground })
hi("Function", { fg = colors.blue })

hi("Statement", { fg = colors.red })
hi("Conditional", { fg = colors.red })
hi("Repeat", { fg = colors.red })
hi("Label", { fg = colors.red })
hi("Operator", { fg = colors.cyan })
hi("Keyword", { fg = colors.red })
hi("Exception", { fg = colors.red })

hi("PreProc", { fg = colors.yellow })
hi("Include", { fg = colors.yellow })
hi("Define", { fg = colors.yellow })
hi("Macro", { fg = colors.yellow })
hi("PreCondit", { fg = colors.yellow })

hi("Type", { fg = colors.bright_yellow })
hi("StorageClass", { fg = colors.bright_yellow })
hi("Structure", { fg = colors.bright_yellow })
hi("Typedef", { fg = colors.bright_yellow })

hi("Special", { fg = colors.cyan })
hi("SpecialChar", { fg = colors.cyan })
hi("Tag", { fg = colors.red })
hi("Delimiter", { fg = colors.foreground })
hi("Debug", { fg = colors.red })

hi("Underlined", { fg = colors.blue, underline = true })
hi("Ignore", { fg = colors.muted })
hi("Error", { fg = colors.red, bold = true })
hi("Todo", { fg = colors.background, bg = colors.yellow, bold = true })

-- ============================================================================
-- Treesitter
-- ============================================================================

hi("@comment", { link = "Comment" })

hi("@string", { link = "String" })
hi("@string.escape", { fg = colors.cyan })
hi("@string.special", { fg = colors.cyan })

hi("@number", { link = "Number" })
hi("@boolean", { link = "Boolean" })
hi("@constant", { link = "Constant" })

hi("@variable", { fg = colors.foreground })
hi("@variable.builtin", { fg = colors.magenta })

hi("@parameter", { fg = colors.foreground })
hi("@property", { fg = colors.cyan })
hi("@field", { fg = colors.cyan })

hi("@function", { link = "Function" })
hi("@function.call", { fg = colors.blue })
hi("@function.builtin", { fg = colors.cyan })
hi("@constructor", { fg = colors.bright_yellow })

hi("@keyword", { link = "Keyword" })
hi("@keyword.function", { fg = colors.red })
hi("@keyword.return", { fg = colors.red })

hi("@conditional", { link = "Conditional" })
hi("@repeat", { link = "Repeat" })

hi("@operator", { link = "Operator" })

hi("@type", { link = "Type" })
hi("@type.builtin", { fg = colors.bright_yellow })

hi("@constant.builtin", { fg = colors.magenta })
hi("@module", { fg = colors.bright_yellow })
hi("@namespace", { fg = colors.bright_yellow })

hi("@punctuation.delimiter", { fg = colors.foreground })
hi("@punctuation.bracket", { fg = colors.muted })
hi("@punctuation.special", { fg = colors.cyan })

hi("@tag", { fg = colors.red })
hi("@tag.attribute", { fg = colors.bright_yellow })
hi("@tag.delimiter", { fg = colors.muted })

-- ============================================================================
-- Diagnostics
-- ============================================================================

hi("DiagnosticError", { fg = colors.red })
hi("DiagnosticWarn", { fg = colors.yellow })
hi("DiagnosticInfo", { fg = colors.blue })
hi("DiagnosticHint", { fg = colors.cyan })
hi("DiagnosticOk", { fg = colors.green })

hi("DiagnosticVirtualTextError", { fg = colors.red })
hi("DiagnosticVirtualTextWarn", { fg = colors.yellow })
hi("DiagnosticVirtualTextInfo", { fg = colors.blue })
hi("DiagnosticVirtualTextHint", { fg = colors.cyan })
hi("DiagnosticVirtualTextOk", { fg = colors.green })

hi("DiagnosticUnderlineError", {
  undercurl = true,
  sp = colors.red,
})

hi("DiagnosticUnderlineWarn", {
  undercurl = true,
  sp = colors.yellow,
})

hi("DiagnosticUnderlineInfo", {
  undercurl = true,
  sp = colors.blue,
})

hi("DiagnosticUnderlineHint", {
  undercurl = true,
  sp = colors.cyan,
})

-- ============================================================================
-- Diff
-- ============================================================================

hi("DiffAdd", {
  fg = colors.green,
  bg = "#24372f",
})

hi("DiffChange", {
  fg = colors.yellow,
  bg = "#3a3029",
})

hi("DiffDelete", {
  fg = colors.red,
  bg = "#3d292f",
})

hi("DiffText", {
  fg = colors.yellow,
  bg = "#4b3b2c",
  bold = true,
})

-- ============================================================================
-- Git signs
-- ============================================================================

hi("GitSignsAdd", { fg = colors.green })
hi("GitSignsChange", { fg = colors.yellow })
hi("GitSignsDelete", { fg = colors.red })

-- ============================================================================
-- LSP
-- ============================================================================

hi("LspReferenceText", { bg = colors.border })
hi("LspReferenceRead", { bg = colors.border })
hi("LspReferenceWrite", { bg = colors.border })

-- ============================================================================
-- Matching brackets
-- ============================================================================

hi("MatchParen", {
  fg = colors.bright_yellow,
  bg = colors.border,
  bold = true,
})

-- ============================================================================
-- Telescope
-- ============================================================================

hi("TelescopeNormal", { fg = colors.foreground, bg = colors.background })
hi("TelescopeBorder", { fg = colors.border, bg = colors.background })
hi("TelescopePromptNormal", { fg = colors.foreground, bg = colors.black })
hi("TelescopePromptBorder", { fg = colors.border, bg = colors.black })

hi("TelescopePromptTitle", {
  fg = colors.black,
  bg = colors.blue,
  bold = true,
})

hi("TelescopePreviewTitle", {
  fg = colors.black,
  bg = colors.green,
  bold = true,
})

hi("TelescopeResultsTitle", {
  fg = colors.black,
  bg = colors.magenta,
  bold = true,
})

hi("TelescopeSelection", {
  fg = colors.selection_foreground,
  bg = colors.selection_background,
})

-- ============================================================================
-- Nvim-tree / file explorers
-- ============================================================================

hi("NvimTreeNormal", { fg = colors.foreground, bg = colors.background })
hi("NvimTreeNormalNC", { fg = colors.foreground, bg = colors.background })
hi("NvimTreeRootFolder", { fg = colors.bright_yellow, bold = true })
hi("NvimTreeFolderName", { fg = colors.blue })
hi("NvimTreeOpenedFolderName", { fg = colors.blue, bold = true })
hi("NvimTreeFolderIcon", { fg = colors.blue })
hi("NvimTreeSpecialFile", { fg = colors.magenta })
hi("NvimTreeGitNew", { fg = colors.green })
hi("NvimTreeGitDirty", { fg = colors.yellow })
hi("NvimTreeGitDeleted", { fg = colors.red })

-- ============================================================================
-- Completion
-- ============================================================================

hi("CmpItemAbbr", { fg = colors.foreground })
hi("CmpItemAbbrMatch", { fg = colors.blue, bold = true })
hi("CmpItemAbbrMatchFuzzy", { fg = colors.blue })

hi("CmpItemKind", { fg = colors.magenta })
hi("CmpItemMenu", { fg = colors.muted })

-- ============================================================================
-- Terminal colors
-- ============================================================================

vim.g.terminal_color_0 = colors.black
vim.g.terminal_color_1 = colors.red
vim.g.terminal_color_2 = colors.green
vim.g.terminal_color_3 = colors.yellow
vim.g.terminal_color_4 = colors.blue
vim.g.terminal_color_5 = colors.magenta
vim.g.terminal_color_6 = colors.cyan
vim.g.terminal_color_7 = colors.white

vim.g.terminal_color_8 = colors.bright_black
vim.g.terminal_color_9 = colors.bright_red
vim.g.terminal_color_10 = colors.bright_green
vim.g.terminal_color_11 = colors.bright_yellow
vim.g.terminal_color_12 = colors.bright_blue
vim.g.terminal_color_13 = colors.bright_magenta
vim.g.terminal_color_14 = colors.bright_cyan
vim.g.terminal_color_15 = colors.bright_white
