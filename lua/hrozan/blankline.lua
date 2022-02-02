local blankline = require("indent_blankline")

blankline.setup {
  indentLine_enabled = 1,
  char = "▏",
  filetype_exclude = {
     "help",
     "terminal",
     "dashboard",
     "packer",
     "lspinfo",
     "TelescopePrompt",
     "TelescopeResults",
     "NvimTree",
  },
  buftype_exclude = { "terminal" },
  show_trailing_blankline_indent = false,
  show_first_indent_level = true,
}