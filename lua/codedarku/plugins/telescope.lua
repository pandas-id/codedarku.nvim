local lush = require('lush')
local colors = require('codedarku.colors')

local theme = lush(function()
  return {
    TelescopeSelection({ fg=colors.green, gui="bold" }),
    TelescopeMatching({ fg=colors.yelloworange, gui="bold" }),
    TelescopePreviewBorder({ fg=colors.gray, gui="bold" }),
    TelescopePromptBorder({ fg=colors.gray, gui="bold" }),
    TelescopeResultsBorder({ fg=colors.gray, gui="bold" }),
    TelescopePromptPrefix({ fg=colors.blue })
  }
end)

return theme
