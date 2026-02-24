---@type ArethaDark.GroupSpec
--- Syntax highlighting matching Aretha Dark VSCode theme token colors
return {
  name = "syntax",

  highlights = function(scheme, config)
    local styles = config.styles or {}
    local base = scheme.base

    return {
      -- Comments (#6E8898, italic)
      Comment = { fg = base.dimmed3, italic = styles.comment and styles.comment.italic },

      -- Constants
      Constant = { fg = base.orange },
      String = { fg = base.green },
      Character = { fg = base.orange },
      Number = { fg = base.orange },
      Boolean = { fg = base.teal or base.cyan },
      Float = { fg = base.orange },

      -- Identifiers
      Identifier = { fg = base.white },
      Function = { fg = base.cyan },

      -- Statements
      Statement = { fg = base.magenta },
      Conditional = { fg = base.red },
      Repeat = { fg = base.red },
      Label = { fg = base.red },
      Operator = { fg = base.blue },
      Keyword = { fg = base.magenta, italic = styles.keyword and styles.keyword.italic },
      Exception = { fg = base.red },

      -- Preprocessor
      PreProc = { fg = base.gold or base.yellow },
      Include = { fg = base.red },
      Define = { fg = base.red },
      Macro = { fg = base.red },
      PreCondit = { fg = base.red },

      -- Types
      Type = { fg = base.orange or base.yellow },
      StorageClass = { fg = base.red, italic = styles.storageclass and styles.storageclass.italic },
      Structure = { fg = base.blue, italic = styles.structure and styles.structure.italic },
      Typedef = { fg = base.gold or base.yellow },

      -- Special
      Special = { fg = base.property or base.blue },
      SpecialChar = { fg = base.orange },
      Delimiter = { fg = base.white },
      SpecialComment = { fg = base.dimmed3 },

      -- Text styles
      Underlined = { underline = true },
      Bold = { bold = true },
      Italic = { italic = true },

      -- Errors and todos
      Error = { fg = scheme.inputValidation.errorForeground },
      Todo = { bg = scheme.editor.background, fg = base.magenta, bold = true },

      -- Language specific
      javaAnnotation = { fg = base.dimmed2 },
    }
  end,
}
