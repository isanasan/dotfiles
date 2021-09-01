local M = {}

    function M.config()

        vim.api.nvim_set_keymap('','<Space>c','<Plug>(caw:hatpos:toggle)',{silent = true})
        vim.api.nvim_set_keymap('v','<Space>c','<Plug>(caw:hatpos:toggle)',{silent = true})

    end

return M

