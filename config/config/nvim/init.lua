-- Plugins
require 'rc/pluginlist'
require 'rc/keymaps'

vim.cmd('source ~/.config/nvim/rc/init.vim')

vim.cmd[[autocmd BufWritePost pluginlist.lua PackerCompile]]
