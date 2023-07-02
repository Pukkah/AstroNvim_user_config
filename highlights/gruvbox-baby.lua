local c = require("gruvbox-baby.colors").config()

return {
  CursorLineNr = { fg = c.soft_yellow },
  ColorColumn = { bg = c.background_light },
  -- Dashboard
  DashboardHeader = { fg = c.blue_gray },
  DashboardCenter = { fg = c.clean_green },
  DashboardShortCut = { fg = c.orange },
  DashboardFooter = { fg = c.comment },
  -- LSP
  LspReferenceText = { bg = "#3c3836" },
  LspReferenceRead = { link = "LspReferenceText" },
  LspReferenceWrite = { link = "LspReferenceText" },
  -- NeoTree
  NeoTreeFloatBorder = { fg = c.milk, bg = c.background },
  NeoTreeFloatTitle = { fg = c.dark, bg = c.milk },
  NeoTreeFloatNormal = { fg = c.foreground, bg = c.background },
}
