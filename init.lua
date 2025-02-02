require 'lua.custom.vimconfigs'
require 'lua.custom.keymaps'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
	require 'lua.custom.plugins.neo-tree',
	require 'lua.custom.plugins.colortheme',
	require 'lua.custom.plugins.telescope',
    require 'lua.custom.plugins.treesitter',
    require 'lua.custom.plugins.lsp',

})

