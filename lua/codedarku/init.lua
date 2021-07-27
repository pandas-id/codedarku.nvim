local lush = require('lush')
local codedarku = require('codedarku.codedarku')
local nvimtree = require('codedarku.plugins.nvimtree')
local barbar = require('codedarku.plugins.barbar')
local telescope = require('codedarku.plugins.telescope')

local parts = {
  codedarku,
  nvimtree,
  barbar,
  telescope
}


local theme = lush.merge(parts)

return theme
