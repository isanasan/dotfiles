vim.cmd('source ~/.config/nvim/rc/init.vim')

-- Plugins
require 'rc/pluginlist'
require 'rc/keymaps'

vim.cmd[[autocmd BufWritePost pluginlist.lua PackerCompile]]
