---@class ArethaDark
local M = {}

local config_module = require("aretha-dark.config")
local theme_module = require("aretha-dark.theme")

--- Setup the colorscheme with user options
---@param user_config? ArethaDark.Config
function M.setup(user_config)
  config_module.setup(user_config)

  -- Create user commands
  local commands = require("aretha-dark.commands")
  commands.create()
end

--- Load the colorscheme
function M.load()
  theme_module.load()
  vim.api.nvim_exec_autocmds("ColorScheme", { pattern = vim.g.colors_name })
end

--- Switch to a specific filter
---@param filter ArethaDark.Filter
function M.set_filter(filter)
  if not config_module.is_valid_filter(filter) then
    vim.notify(
      -- style: ignore
      string.format("ArethaDark: Invalid filter '%s'. Valid options: %s", filter, table.concat(config_module.get_filters(), ", ")),
      vim.log.levels.WARN
    )
    return
  end

  config_module.extend({ filter = filter })
  theme_module.clear_cache()
  M.load()
end

--- Get the current configuration
---@return ArethaDark.Config
function M.get_config()
  return config_module.get()
end

--- Get the current scheme
---@return ArethaDark.Scheme
function M.get_scheme()
  return theme_module.get_scheme()
end

--- Get color utilities
---@return ArethaDark.Colors
function M.get_colors()
  return require("aretha-dark.colors")
end

--- Get a palette by filter name
---@param filter? ArethaDark.Filter
---@return ArethaDark.Palette
function M.get_palette(filter)
  local palette_module = require("aretha-dark.palette")
  return palette_module.load(filter or config_module.get().filter or "default")
end

--- Get colors in NvChad's base46 theme format
---@param filter? ArethaDark.Filter
---@return table NvChad base46 theme table with base_30, base_16, and type
function M.nvchad(filter)
  return require("aretha-dark.nvchad").get(filter)
end

return M
