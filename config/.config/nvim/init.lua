vim.cmd('source ~/.config/nvim/rc/init.vim')

-- Plugins
require 'rc/pluginlist'

vim.cmd[[autocmd BufWritePost pluginlist.lua PackerCompile]]

vim.cmd('source ~/.config/nvim/rc/keymaps.vim')
