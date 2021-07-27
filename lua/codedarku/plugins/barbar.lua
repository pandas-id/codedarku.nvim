local lush = require('lush')
local colors = require('codedarku.colors')

local theme = lush(function()
  return {
    BufferCurrent({ fg=colors.fg, gui='bold' }),
    BufferCurrentMod({ fg=colors.fg }),
    BufferCurrentSign({ fg=colors.fg }),
    BufferCurrentTarget({ fg=colors.fg }),
    BufferVisible({ fg=colors.fg }),
    BufferVisibleMod({ fg=colors.fg }),
    BufferVisibleSign({ fg=colors.fg }),
    BufferVisibleTarget({ fg=colors.fg }),
    BufferInactive({ fg=colors.gray }),
    BufferInactiveMod({ fg=colors.yelloworange }),
    BufferInactiveSign({ fg=colors.yelloworange }),
    BufferInactiveTarget({ fg=colors.yelloworange }),
    BufferTabpages({ fg=colors.fg }),
    BufferTabpageFill({ fg=colors.fg })
  }
end)

return theme
