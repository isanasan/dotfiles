vim.g.mapleader = "<Space>"

vim.api.nvim_set_keymap('n',"<C-n>","<C-u>cnext<CR>",
                        {noremap = true,silent = true})
vim.api.nvim_set_keymap('n',"<C-p>","<C-u>cprev<CR>",
                        {noremap = true,silent = true})
vim.api.nvim_set_keymap('n',"Y","y$",
                        {noremap = true,silent = true})
vim.api.nvim_set_keymap('n',"p","]p",
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n','P',']P',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n','j','gj',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n','k','gk',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n','Q',':confirm q!',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('','H','0',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('','L','$',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('t','<C-g>','<C-\\><C-n>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('v','<','<gv',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('v','>','>gv',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('','<leader>c','<Plug>(caw:hatpos:toggle)',
                        {silent = true})
vim.api.nvim_set_keymap('v','<leader>c','<Plug>(caw:hatpos:toggle)',
                        {silent = true})

