-- Plugins
require 'pluginlist'
require 'keymaps'

vim.cmd('source ~/.config/nvim/rc/init.vim')
vim.cmd([[
    if exists('g:vscode')
        source ~/.config/nvim/rc/vscode-nvim/mapping.vim
    endif
]])

vim.cmd[[autocmd BufWritePost pluginlist.lua PackerCompile]]
