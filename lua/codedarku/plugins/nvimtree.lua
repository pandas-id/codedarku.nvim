local lush = require('lush')
local colors = require('codedarku.colors')

local theme = lush(function()
  return {
    NvimTreeFolderName({ fg=colors.pink }),
    NvimTreeRootFolder({ fg=colors.gray }),
    NvimTreeFolderIcon({ fg = colors.blue }),
    NvimTreeEmptyFolderName({ fg=colors.pink }),
    NvimTreeOpenedFolderName({ fg=colors.pink, gui='bold' }),
    NvimTreeExecFile({ fg=colors.orange }),
    NvimTreeOpenedFile({ fg=colors.selection }),
    NvimTreeSpecialFile({ fg=colors.green }),
    NvimTreeImageFile({ fg=colors.green }),
    NvimTreeMarkdownFile({ fg=colors.green }),
    NvimTreeIndentMarker({ fg = colors.linenumber })
  }
end)

return theme
