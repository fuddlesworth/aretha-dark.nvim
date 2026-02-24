---@class ArethaDark.Commands
local M = {}

--- Create user commands
function M.create()
  local cmd = vim.api.nvim_create_user_command

  -- ArethaDark: Reload the colorscheme
  cmd("ArethaDark", function()
    require("aretha-dark").load()
  end, {
    desc = "Reload Aretha Dark colorscheme",
    nargs = 0,
  })
end

return M
