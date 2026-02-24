# Aretha Dark for Neovim

A dark blue Neovim colorscheme based on the Aretha Plasma KDE color scheme. Converted from the [Aretha Dark VSCode theme](https://github.com/nlavender/aretha-dark-vscode).

## Features

- Dark blue palette matching KDE Plasma Aretha
- Full Treesitter syntax highlighting
- Support for 30+ Neovim plugins (LSP, Telescope, Bufferline, etc.)
- Lualine, Lightline, and Barbecue integration
- Transparent background option
- Customizable via override functions

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "nlavender/aretha-dark.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("aretha-dark").setup()
    vim.cmd.colorscheme("aretha-dark")
  end,
}
```

Using [packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use {
  "nlavender/aretha-dark.nvim",
  config = function()
    require("aretha-dark").setup()
    vim.cmd.colorscheme("aretha-dark")
  end
}
```

## Configuration

```lua
require("aretha-dark").setup({
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
  inc_search = "background", -- underline | background
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
  override = function(scheme)
    return {}
  end,
  override_palette = function(filter)
    return {}
  end,
  override_scheme = function(scheme, palette, colors)
    return {}
  end,
})
```

## Plugin Integration

### Lualine

```lua
require("lualine").setup({
  options = { theme = "aretha-dark" },
})
```

### Barbecue

```lua
require("barbecue").setup({
  theme = "aretha-dark",
})
```

### Lightline

```vim
let g:lightline = {'colorscheme': 'arethadark'}
```

## Commands

| Command | Description |
|---------|-------------|
| `:ArethaDark` | Reload the Aretha Dark colorscheme |

## Color Palette

Based on the Aretha Dark VSCode theme:

| Purpose | Hex |
|---------|-----|
| Editor background | `#162239` |
| Sidebar background | `#17243D` |
| Foreground | `#D3DAE3` |
| Primary blue (cursor, operators) | `#3DAEE9` |
| Functions | `#478ED5` |
| Strings | `#00AA7F` |
| Keywords | `#B48EAD` |
| Types | `#FFAA7F` |
| Errors | `#C74264` |
| Comments | `#6E8898` |

## License

MIT
