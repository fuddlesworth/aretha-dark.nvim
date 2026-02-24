---@type ArethaDark.Palette
--- Aretha Dark palette - from KDE Plasma Aretha color scheme
return {
  -- Backgrounds (dark blue tones)
  dark2 = "#162239",
  dark1 = "#17243D",
  background = "#162239",

  -- Foreground
  text = "#D3DAE3",

  -- Accent colors (from VSCode Aretha Dark)
  accent1 = "#C74264", -- Red (errors, control flow)
  accent2 = "#FFAA7F", -- Orange (types, warnings)
  accent3 = "#3DAEE9", -- Primary blue (cursor, operators)
  accent4 = "#00AA7F", -- Green (strings, success)
  accent5 = "#478ED5", -- Functions blue
  accent6 = "#B48EAD", -- Purple (keywords)

  -- Dimmed / UI grays
  dimmed1 = "#D3DAE3",
  dimmed2 = "#BABABA",
  dimmed3 = "#6E8898", -- Comments
  dimmed4 = "#8898A6", -- Punctuation
  dimmed5 = "#192742", -- Widgets, status bar, darker UI
  dimmed6 = "#384868", -- Whitespace, borders, tree indent

  -- Additional semantic colors
  orange = "#D19A66", -- Numbers, string escape
  teal = "#56B6C2", -- Booleans
  gold = "#E5C07B", -- Type declarations
  property = "#4C7FCC", -- Properties

  -- UI-specific (from VSCode Aretha Dark)
  selection = "#273E66",
  lineHighlight = "#192742",
  focusBorder = "#084D86",
  indentGuide = "#384868",
  indentGuideActive = "#4C7FCC",
}
