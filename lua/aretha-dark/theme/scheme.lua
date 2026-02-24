---@class ArethaDark.Scheme.Editor
---@field background string
---@field foreground string
---@field lineHighlightBackground string
---@field selectionBackground string
---@field findMatchBackground string
---@field findMatchBorder string
---@field findMatchHighlightBackground string
---@field foldBackground string
---@field wordHighlightBackground string
---@field selectionHighlightBackground string
---@field wordHighlightStrongBackground string

---@class ArethaDark.Scheme.EditorLineNumber
---@field foreground string
---@field activeForeground string

---@class ArethaDark.Scheme.EditorHoverWidget
---@field background string
---@field border string

---@class ArethaDark.Scheme.EditorSuggestWidget
---@field background string
---@field border string
---@field foreground string
---@field highlightForeground string
---@field selectedBackground string

---@class ArethaDark.Scheme.EditorIndentGuide
---@field background string
---@field activeBackground string

---@class ArethaDark.Scheme.EditorInlayHint
---@field background string
---@field foreground string

---@class ArethaDark.Scheme.EditorGutter
---@field addedBackground string
---@field deletedBackground string
---@field modifiedBackground string

---@class ArethaDark.Scheme.SideBar
---@field background string
---@field foreground string

---@class ArethaDark.Scheme.SideBarTitle
---@field foreground string

---@class ArethaDark.Scheme.List
---@field activeSelectionBackground string

---@class ArethaDark.Scheme.SideBarSectionHeader
---@field background string
---@field foreground string

---@class ArethaDark.Scheme.Breadcrumb
---@field foreground string

---@class ArethaDark.Scheme.Button
---@field background string
---@field foreground string
---@field hoverBackground string
---@field separator string

---@class ArethaDark.Scheme.ScrollbarSlider
---@field hoverBackground string

---@class ArethaDark.Scheme.GitDecoration
---@field addedResourceForeground string
---@field conflictingResourceForeground string
---@field deletedResourceForeground string
---@field ignoredResourceForeground string
---@field modifiedResourceForeground string
---@field stageDeletedResourceForeground string
---@field stageModifiedResourceForeground string
---@field untrackedResourceForeground string

---@class ArethaDark.Scheme.InputValidation
---@field errorBackground string
---@field errorBorder string
---@field errorForeground string
---@field infoBackground string
---@field infoBorder string
---@field infoForeground string
---@field warningBackground string
---@field warningBorder string
---@field warningForeground string

---@class ArethaDark.Scheme.ErrorLens
---@field errorBackground string
---@field errorForeground string
---@field warningBackground string
---@field warningForeground string
---@field infoBackground string
---@field infoForeground string
---@field hintBackground string
---@field hintForeground string

---@class ArethaDark.Scheme.Terminal
---@field background string
---@field foreground string

---@class ArethaDark.Scheme.TerminalCursor
---@field background string
---@field foreground string

---@class ArethaDark.Scheme.EditorGroupHeader
---@field tabsBackground string
---@field tabsBorder string

---@class ArethaDark.Scheme.Tab
---@field activeBackground string
---@field activeBorder string
---@field activeForeground string
---@field inactiveBackground string
---@field inactiveForeground string
---@field unfocusedActiveBackground string
---@field unfocusedActiveBorder string
---@field unfocusedActiveForeground string

---@class ArethaDark.Scheme.StatusBar
---@field background string
---@field foreground string
---@field activeForeground string

---@class ArethaDark.Scheme.DiffEditor
---@field insertedLineBackground string
---@field removedLineBackground string
---@field modifiedLineBackground string

---@class ArethaDark.Scheme.DiffEditorOverview
---@field insertedForeground string
---@field removedForeground string
---@field modifiedForeground string

---@class ArethaDark.Scheme.Notifications
---@field background string
---@field border string
---@field foreground string

---@class ArethaDark.Scheme.NotificationsErrorIcon
---@field foreground string

---@class ArethaDark.Scheme.NotificationsInfoIcon
---@field foreground string

---@class ArethaDark.Scheme.NotificationsWarningIcon
---@field foreground string

---@class ArethaDark.Scheme.Base
---@field dark string
---@field black string
---@field red string
---@field green string
---@field yellow string
---@field blue string
---@field magenta string
---@field cyan string
---@field white string
---@field dimmed1 string
---@field dimmed2 string
---@field dimmed3 string
---@field dimmed4 string
---@field dimmed5 string

---@class ArethaDark.Scheme
---@field editor ArethaDark.Scheme.Editor
---@field editorLineNumber ArethaDark.Scheme.EditorLineNumber
---@field editorHoverWidget ArethaDark.Scheme.EditorHoverWidget
---@field editorSuggestWidget ArethaDark.Scheme.EditorSuggestWidget
---@field editorIndentGuide ArethaDark.Scheme.EditorIndentGuide
---@field editorInlayHint ArethaDark.Scheme.EditorInlayHint
---@field editorGutter ArethaDark.Scheme.EditorGutter
---@field sideBar ArethaDark.Scheme.SideBar
---@field sideBarTitle ArethaDark.Scheme.SideBarTitle
---@field list ArethaDark.Scheme.List
---@field sideBarSectionHeader ArethaDark.Scheme.SideBarSectionHeader
---@field breadcrumb ArethaDark.Scheme.Breadcrumb
---@field button ArethaDark.Scheme.Button
---@field scrollbarSlider ArethaDark.Scheme.ScrollbarSlider
---@field gitDecoration ArethaDark.Scheme.GitDecoration
---@field inputValidation ArethaDark.Scheme.InputValidation
---@field errorLens ArethaDark.Scheme.ErrorLens
---@field terminal ArethaDark.Scheme.Terminal
---@field terminalCursor ArethaDark.Scheme.TerminalCursor
---@field editorGroupHeader ArethaDark.Scheme.EditorGroupHeader
---@field tab ArethaDark.Scheme.Tab
---@field statusBar ArethaDark.Scheme.StatusBar
---@field diffEditor ArethaDark.Scheme.DiffEditor
---@field diffEditorOverview ArethaDark.Scheme.DiffEditorOverview
---@field notifications ArethaDark.Scheme.Notifications
---@field notificationsErrorIcon ArethaDark.Scheme.NotificationsErrorIcon
---@field notificationsInfoIcon ArethaDark.Scheme.NotificationsInfoIcon
---@field notificationsWarningIcon ArethaDark.Scheme.NotificationsWarningIcon
---@field base ArethaDark.Scheme.Base

local colors = require("aretha-dark.colors")

---@class ArethaDark.SchemeModule
local M = {}

--- Build the color scheme from a palette
---@param palette ArethaDark.Palette
---@param config ArethaDark.Config
---@return ArethaDark.Scheme
function M.build(palette, config)
  local p = palette
  local transparent = config.transparent_background

  ---@type ArethaDark.Scheme
  local scheme = {}

  -- Editor colors (Aretha Dark: selection #273E66, line highlight #192742)
  local selection_bg = p.selection or colors.blend(p.dimmed1, 0.15, p.background)
  local line_highlight = p.lineHighlight or colors.blend(p.text, 0.05, p.background)
  scheme.editor = {
    background = transparent and "NONE" or p.background,
    foreground = p.text,
    lineHighlightBackground = line_highlight,
    selectionBackground = selection_bg,
    findMatchBackground = colors.blend(p.accent2, 0.25, p.background),
    findMatchBorder = p.accent2,
    findMatchHighlightBackground = colors.blend(p.accent2, 0.2, p.background),
    foldBackground = colors.blend(p.text, 0.1, p.background),
    wordHighlightBackground = colors.blend(p.accent5, 0.25, p.background),
    selectionHighlightBackground = colors.blend(p.selection or p.accent5, 0.5, p.background),
    wordHighlightStrongBackground = colors.blend(p.accent5, 0.3, p.background),
  }

  scheme.editorLineNumber = {
    foreground = colors.blend(p.dimmed2, 0.6, p.background),
    activeForeground = p.dimmed1,
  }

  scheme.editorHoverWidget = {
    background = p.dimmed5,
    border = p.focusBorder or p.accent3,
  }

  scheme.editorSuggestWidget = {
    background = p.dimmed5,
    border = p.focusBorder or p.dimmed5,
    foreground = p.dimmed1,
    highlightForeground = p.accent3,
    selectedBackground = selection_bg,
  }

  scheme.editorIndentGuide = {
    background = p.indentGuide or p.dimmed5,
    activeBackground = p.indentGuideActive or p.accent3,
  }

  scheme.editorInlayHint = {
    background = p.dimmed5,
    foreground = p.dimmed2,
  }

  scheme.editorGutter = {
    addedBackground = p.accent4,
    deletedBackground = p.accent1,
    modifiedBackground = p.accent5,
  }

  -- Sidebar colors (VSCode: foreground #D3DAE3, title #D3DAE3)
  scheme.sideBar = {
    background = p.dark1,
    foreground = p.dimmed1,
  }

  scheme.sideBarTitle = {
    foreground = p.dimmed1,
  }

  scheme.list = {
    activeSelectionBackground = selection_bg,
  }

  scheme.sideBarSectionHeader = {
    background = p.dimmed5,
    foreground = p.dimmed1,
  }

  scheme.breadcrumb = {
    foreground = p.dimmed2,
  }

  -- Button colors
  scheme.button = {
    background = p.dimmed5,
    foreground = p.dimmed1,
    hoverBackground = p.dimmed4,
    separator = p.background,
  }

  scheme.scrollbarSlider = {
    hoverBackground = colors.blend(p.dimmed1, 0.15, p.background),
  }

  -- Git colors
  scheme.gitDecoration = {
    addedResourceForeground = p.accent4,
    conflictingResourceForeground = p.accent2,
    deletedResourceForeground = p.accent1,
    ignoredResourceForeground = p.dimmed2,
    modifiedResourceForeground = p.accent5,
    stageDeletedResourceForeground = p.accent1,
    stageModifiedResourceForeground = p.accent5,
    untrackedResourceForeground = p.accent4,
  }

  -- Validation colors
  scheme.inputValidation = {
    errorBackground = p.dimmed5,
    errorBorder = p.accent1,
    errorForeground = p.accent1,
    infoBackground = p.dimmed5,
    infoBorder = p.accent5,
    infoForeground = p.accent5,
    warningBackground = p.dimmed5,
    warningBorder = p.accent2,
    warningForeground = p.accent2,
  }

  scheme.errorLens = {
    errorBackground = colors.blend(p.accent1, 0.1, p.background),
    errorForeground = p.accent1,
    warningBackground = colors.blend(p.accent2, 0.1, p.background),
    warningForeground = p.accent2,
    infoBackground = colors.blend(p.accent5, 0.1, p.background),
    infoForeground = p.accent5,
    hintBackground = colors.blend(p.accent5, 0.1, p.background),
    hintForeground = p.accent5,
  }

  -- Terminal colors (Aretha: editor bg, blue cursor)
  scheme.terminal = {
    background = p.background,
    foreground = p.text,
  }

  scheme.terminalCursor = {
    background = p.accent3,
    foreground = p.background,
  }

  -- Tab colors
  scheme.editorGroupHeader = {
    tabsBackground = p.dark1,
    tabsBorder = p.dark1,
  }

  scheme.tab = {
    activeBackground = transparent and "NONE" or p.background,
    activeBorder = p.accent3,
    activeForeground = p.dimmed1,
    inactiveBackground = p.dark1,
    inactiveForeground = p.dimmed2,
    unfocusedActiveBackground = p.background,
    unfocusedActiveBorder = p.dimmed2,
    unfocusedActiveForeground = p.dimmed1,
  }

  scheme.statusBar = {
    background = p.dimmed5,
    foreground = p.dimmed1,
    activeForeground = p.dimmed1,
  }

  -- Diff colors
  scheme.diffEditor = {
    insertedLineBackground = colors.blend(p.accent4, 0.2, p.background),
    removedLineBackground = colors.blend(p.accent1, 0.2, p.background),
    modifiedLineBackground = colors.blend(p.accent5, 0.2, p.background),
  }

  scheme.diffEditorOverview = {
    insertedForeground = colors.blend(p.accent4, 0.65, scheme.diffEditor.insertedLineBackground),
    removedForeground = colors.blend(p.accent1, 0.65, scheme.diffEditor.removedLineBackground),
    modifiedForeground = colors.blend(p.accent2, 0.65, scheme.diffEditor.modifiedLineBackground),
  }

  -- Notification colors
  scheme.notifications = {
    background = p.dimmed5,
    border = p.dimmed5,
    foreground = p.dimmed1,
  }

  scheme.notificationsErrorIcon = {
    foreground = p.accent1,
  }

  scheme.notificationsInfoIcon = {
    foreground = p.accent5,
  }

  scheme.notificationsWarningIcon = {
    foreground = p.accent2,
  }

  -- Base semantic colors (Aretha Dark mapping)
  scheme.base = {
    dark = p.dark2,
    black = p.dark1,
    red = p.accent1,
    green = p.accent4,
    yellow = p.accent2, -- Orange for types, UI
    blue = p.accent3, -- Primary blue
    magenta = p.accent6,
    cyan = p.accent5,
    white = p.text,
    dimmed1 = p.dimmed1,
    dimmed2 = p.dimmed2,
    dimmed3 = p.dimmed3,
    dimmed4 = p.dimmed4,
    dimmed5 = p.dimmed5,
    dimmed6 = p.dimmed6 or "#384868",
    -- Aretha-specific semantic colors
    orange = p.orange,
    teal = p.teal,
    gold = p.gold,
    property = p.property,
  }

  return scheme
end

return M
