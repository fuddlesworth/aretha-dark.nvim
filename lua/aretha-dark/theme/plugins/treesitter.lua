---@type ArethaDark.PluginSpec
--- Treesitter highlights matching Aretha Dark VSCode semantic token colors
return {
  name = "nvim-treesitter/nvim-treesitter",

  highlights = function(c, config)
    local styles = config.styles or {}
    local base = c.base

    -- Aretha Dark semantic colors
    local orange = base.orange or base.yellow
    local teal = base.teal or base.cyan
    local property = base.property or base.blue
    local gold = base.gold or base.yellow

    -- stylua: ignore
    local highlights = {
      -- Annotations & Attributes (#B48EAD purple)
      ["@annotation"]                       = { fg = base.magenta, italic = styles.annotation and styles.annotation.italic },
      ["@attribute"]                        = { fg = base.magenta },

      -- Booleans & Constants (#56B6C2 teal, #FFAA7F orange)
      ["@boolean"]                          = { fg = teal },
      ["@constant"]                         = { fg = orange },
      ["@constant.builtin"]                 = { fg = teal },
      ["@constant.macro"]                   = { fg = base.red },

      -- Constructors & Fields (#FFAA7F orange, #4C7FCC property)
      ["@constructor"]                      = { fg = orange },
      ["@field"]                            = { fg = property },
      ["@property"]                         = { fg = property },

      -- Diff Changes
      ["@diff.delta"]                       = { fg = base.yellow },
      ["@diff.minus"]                       = { fg = base.red },
      ["@diff.plus"]                        = { fg = base.green },

      -- Functions & Methods (#478ED5 blue)
      ["@function"]                         = { fg = base.cyan },
      ["@function.builtin"]                 = { fg = base.red },
      ["@function.call"]                    = { fg = base.cyan },
      ["@function.macro"]                   = { fg = base.cyan },
      ["@function.method"]                  = { fg = base.cyan },
      ["@function.method.call"]             = { fg = base.cyan },

      -- Keywords (#B48EAD purple, #C74264 red for control flow)
      ["@keyword"]                          = { fg = base.magenta, italic = styles.keyword and styles.keyword.italic },
      ["@keyword.conditional"]              = { fg = base.red },
      ["@keyword.coroutine"]                = { fg = base.red },
      ["@keyword.debug"]                    = { fg = base.red },
      ["@keyword.directive"]                = { fg = base.red },
      ["@keyword.directive.define"]         = { fg = base.red },
      ["@keyword.exception"]                = { fg = base.red },
      ["@keyword.function"]                 = { fg = base.cyan, italic = true },
      ["@keyword.import"]                   = { fg = base.magenta },
      ["@keyword.operator"]                 = { fg = base.blue },
      ["@keyword.repeat"]                   = { fg = base.red },
      ["@keyword.return"]                   = { fg = base.red },
      ["@keyword.storage"]                  = { fg = base.magenta },
      ["@keyword.type"]                     = { fg = gold, italic = true },

      -- Numbers & Operators (#D19A66 orange, #3DAEE9 blue)
      ["@number"]                           = { fg = orange },
      ["@number.float"]                     = { fg = orange },
      ["@operator"]                         = { fg = base.blue },

      -- Parameters & Variables (#D3DAE3 white)
      ["@variable"]                         = { fg = base.white },
      ["@variable.builtin"]                 = { fg = base.red, italic = true },
      ["@variable.member"]                  = { fg = base.white },
      ["@variable.parameter"]               = { fg = base.white, italic = styles.parameter and styles.parameter.italic },
      ["@variable.parameter.builtin"]       = { fg = base.white, italic = styles.parameter and styles.parameter.italic },

      -- Punctuation (#8898A6 gray)
      ["@punctuation.bracket"]              = { fg = base.dimmed2 },
      ["@punctuation.delimiter"]            = { fg = base.dimmed2 },
      ["@punctuation.special"]              = { fg = base.dimmed2 },

      -- Strings & Characters (#00AA7F green, #D19A66 escape)
      ["@string"]                           = { fg = base.green },
      ["@string.documentation"]             = { fg = base.dimmed3 },
      ["@string.escape"]                    = { fg = orange },
      ["@string.regexp"]                    = { fg = orange },
      ["@character"]                        = { fg = base.green },
      ["@character.printf"]                 = { fg = orange },
      ["@character.special"]                = { fg = orange },

      -- Tags & Markup (#C74264 red, #FFAA7F attribute)
      ["@tag"]                              = { fg = base.red },
      ["@tag.attribute"]                    = { fg = orange, italic = styles.tag_attribute and styles.tag_attribute.italic },
      ["@tag.builtin"]                      = { fg = base.red },
      ["@tag.delimiter"]                    = { fg = base.dimmed3 },

      -- Markup Highlight Groups
      ["@markup"]                           = { fg = base.white },
      ["@markup.emphasis"]                  = { fg = base.white, italic = true },
      ["@markup.environment"]               = { fg = base.white },
      ["@markup.environment.name"]          = { fg = base.white },
      ["@markup.heading"]                   = { fg = base.red, bold = true },
      ["@markup.italic"]                    = { fg = base.white, italic = true },
      ["@markup.link"]                      = { fg = base.cyan, underline = true },
      ["@markup.link.label"]                = { fg = base.cyan, underline = true },
      ["@markup.link.label.symbol"]         = { fg = base.cyan, underline = true },
      ["@markup.link.url"]                  = { fg = base.cyan, underline = true },
      ["@markup.list"]                      = { fg = base.white },
      ["@markup.list.checked"]              = { fg = base.white },
      ["@markup.list.markdown"]             = { fg = base.white },
      ["@markup.list.unchecked"]            = { fg = base.white },
      ["@markup.math"]                      = { fg = base.yellow },
      ["@markup.raw"]                       = { fg = base.green },
      ["@markup.raw.markdown_inline"]       = { fg = base.green },
      ["@markup.strikethrough"]             = { fg = base.white, strikethrough = true },
      ["@markup.strong"]                    = { fg = base.white, bold = true },
      ["@markup.underline"]                 = { fg = base.white, underline = true },

      -- Types (#FFAA7F orange, #3DAEE9 interface)
      ["@type"]                             = { fg = orange },
      ["@type.builtin"]                     = { fg = base.cyan, italic = true },
      ["@type.definition"]                  = { fg = orange },
      ["@type.qualifier"]                   = { fg = base.blue },
      ["@module"]                           = { fg = base.blue },
      ["@module.builtin"]                   = { fg = base.blue },
      ["@namespace.builtin"]                = { fg = base.blue },

      -- Labels
      ["@label"]                            = { fg = base.blue },

      -- Language specific: C++
      ["@constant.cpp"]                     = { fg = base.cyan },
      ["@constant.macro.cpp"]               = { fg = base.red },
      ["@keyword.cpp"]                      = { fg = base.magenta, italic = styles.keyword and styles.keyword.italic },
      ["@namespace.cpp"]                    = { fg = base.green },
      ["@operator.cpp"]                     = { fg = base.blue },
      ["@punctuation.delimiter.cpp"]        = { fg = c.sideBar.foreground },
      ["@type.cpp"]                         = { fg = orange, italic = styles.type and styles.type.italic },
      ["@variable.cpp"]                     = { fg = base.white },

      -- Language specific: Dockerfile/Bash
      ["@function.call.bash"]               = { fg = base.cyan },
      ["@keyword.dockerfile"]               = { fg = base.red },
      ["@lsp.type.class.dockerfile"]        = { fg = base.cyan },
      ["@parameter.bash"]                   = { fg = base.white },

      -- Language specific: Go
      ["@keyword.function.go"]              = { fg = base.red },
      ["@module.go"]                        = { fg = base.white },
      ["@string.escape.go"]                 = { fg = orange },

      -- Language specific: LaTeX
      ["@function.macro.latex"]             = { fg = base.cyan },
      ["@punctuation.special.latex"]        = { fg = base.red },
      ["@string.latex"]                     = { fg = base.cyan },
      ["@text.emphasis.latex"]              = { italic = true },
      ["@text.environment.latex"]           = { fg = base.green },
      ["@text.environment.name.latex"]      = { fg = base.blue, italic = true },
      ["@text.math.latex"]                  = { fg = base.magenta },
      ["@text.strong.latex"]                = { bold = true },

      -- Language specific: Markdown
      ["@conceal.markdown"]                 = { bg = base.black },
      ["@markup.italic.markdown_inline"]    = { italic = true },
      ["@markup.link.label.markdown_inline"]= { fg = base.red },
      ["@markup.link.url.markdown_inline"]  = { fg = base.green, underline = true },
      ["@markup.raw.block.markdown"]        = { bg = base.black },
      ["@markup.raw.delimiter.markdown"]    = { bg = base.black, fg = base.dimmed2 },
      ["@markup.strong.markdown_inline"]    = { bold = true },
      ["@none.markdown"]                    = { bg = base.black },
      ["@punctuation.special.markdown"]     = { fg = base.dimmed2 },
      ["@text.emphasis.markdown_inline"]    = { fg = base.white, italic = true },
      ["@text.literal.block.markdown"]      = { bg = c.editor.background },
      ["@text.literal.markdown_inline"]     = { bg = base.dimmed4, fg = base.white },
      ["@text.quote.markdown"]              = { bg = base.dimmed5, fg = base.white },
      ["@text.reference.markdown_inline"]   = { fg = base.red },
      ["@text.strong.markdown_inline"]      = { bold = true },
      ["@text.uri.markdown_inline"]         = { fg = base.green, sp = base.green, underline = true },

      -- Language specific: SCSS
      ["@function.scss"]                    = { fg = base.cyan },
      ["@keyword.scss"]                     = { fg = base.red },
      ["@number.scss"]                      = { fg = orange },
      ["@property.scss"]                    = { fg = property },
      ["@string.scss"]                      = { fg = base.green, italic = true },
      ["@type.scss"]                        = { fg = base.cyan },

      -- Language specific: Lua
      ["@comment.documentation.lua"]        = { fg = base.cyan },
      ["@conditional.lua"]                  = { fg = base.red },
      ["@field.lua"]                        = { fg = base.white },
      ["@function.builtin.lua"]             = { fg = base.cyan },
      ["@keyword.function.lua"]             = { fg = base.red },
      ["@keyword.lua"]                      = { fg = base.magenta, italic = styles.keyword and styles.keyword.italic },
      ["@namespace.lua"]                    = { fg = base.red },
      ["@parameter.lua"]                    = { fg = base.white, italic = true },
      ["@variable.lua"]                     = { fg = base.white },

      -- Language specific: YAML
      ["@number.yaml"]                      = { fg = orange },
      ["@property.yaml"]                    = { fg = base.red },
      ["@punctuation.special.yaml"]         = { fg = base.white },
      ["@string.yaml"]                      = { fg = base.green },
    }

    -- Add markdown heading highlights
    for i = 1, 9 do
      highlights["@markup.heading." .. i .. ".markdown"] = { fg = base.red }
      highlights["@markup.heading." .. i .. ".marker.markdown"] = { fg = base.dimmed2 }
    end

    return highlights
  end,
}
