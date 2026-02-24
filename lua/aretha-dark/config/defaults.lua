---@alias ArethaDark.Filter "default"

---@class ArethaDark.PluginSpec.Lazy
---@field event? string|string[] Event(s) to trigger highlight application
---@field module? string|string[] Module name(s) to trigger on require()

---@class ArethaDark.PluginSpec
---@field name string Plugin identifier (matches nvim plugin name)
---@field lazy? ArethaDark.PluginSpec.Lazy|false Lazy config (false = eager, nil/absent = eager)
---@field enabled? boolean|fun(config: ArethaDark.Config): boolean
---@field highlights fun(scheme: ArethaDark.Scheme, config: ArethaDark.Config): table<string, vim.api.keyset.highlight>

---@class ArethaDark.GroupSpec
---@field name string Group identifier (editor, syntax, semantic)
---@field highlights fun(scheme: ArethaDark.Scheme, config: ArethaDark.Config): table<string, vim.api.keyset.highlight>
---@field extra? fun(scheme: ArethaDark.Scheme, config: ArethaDark.Config): table<string, vim.api.keyset.highlight>

---@class ArethaDark.Config.Styles
---@field comment? vim.api.keyset.highlight
---@field keyword? vim.api.keyset.highlight
---@field type? vim.api.keyset.highlight
---@field storageclass? vim.api.keyset.highlight
---@field structure? vim.api.keyset.highlight
---@field parameter? vim.api.keyset.highlight
---@field annotation? vim.api.keyset.highlight
---@field tag_attribute? vim.api.keyset.highlight

---@class ArethaDark.Config.DayNight
---@field enable boolean
---@field day_filter ArethaDark.Filter
---@field night_filter ArethaDark.Filter

---@class ArethaDark.Config.Plugins.Bufferline
---@field underline_selected? boolean
---@field underline_visible? boolean
---@field underline_fill? boolean
---@field bold? boolean

---@class ArethaDark.Config.Plugins.IndentBlankline
---@field context_highlight? "default"
---@field context_start_underline? boolean

---@class ArethaDark.Config.Plugins
---@field bufferline? ArethaDark.Config.Plugins.Bufferline
---@field indent_blankline? ArethaDark.Config.Plugins.IndentBlankline

---@class ArethaDark.Config
---@field transparent_background? boolean
---@field terminal_colors? boolean
---@field devicons? boolean
---@field styles? ArethaDark.Config.Styles
---@field filter? ArethaDark.Filter
---@field day_night? ArethaDark.Config.DayNight
---@field inc_search? "underline" | "background"
---@field background_clear? string[]
---@field disabled_plugins? string[] List of plugin names to disable highlight generation for
---@field plugins? ArethaDark.Config.Plugins
---@field override? fun(scheme: ArethaDark.Scheme): table<string, vim.api.keyset.highlight>
---@field override_palette? fun(filter: ArethaDark.Filter): ArethaDark.Palette
---@field override_scheme? fun(scheme: ArethaDark.Scheme, palette: ArethaDark.Palette, colors: ArethaDark.Colors): ArethaDark.Scheme

---@type ArethaDark.Config
local defaults = {
  transparent_background = false,
  terminal_colors = true,
  devicons = false,
  styles = {
    comment = { italic = true },
    keyword = { italic = true },
    type = { italic = true },
    storageclass = { italic = true },
    structure = { italic = true },
    parameter = { italic = true },
    annotation = { italic = true },
    tag_attribute = { italic = true },
  },
  filter = "default",
  day_night = {
    enable = false,
    day_filter = "default",
    night_filter = "default",
  },
  inc_search = "background",
  background_clear = {
    "toggleterm",
    "telescope",
    "renamer",
    "notify",
  },
  disabled_plugins = {},
  plugins = {
    bufferline = {
      underline_selected = false,
      underline_visible = false,
      underline_fill = false,
      bold = true,
    },
    indent_blankline = {
      context_highlight = "default",
      context_start_underline = false,
    },
  },
  override = nil,
  override_palette = nil,
  override_scheme = nil,
}

return defaults
