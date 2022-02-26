local M = {}

    function M.config()

        vim.cmd([[
            let g:vim_markdown_folding_disabled = 1
            let g:vim_markdown_auto_insert_bullets = 0
            let g:vim_markdown_new_list_item_indent = 0
        ]])

    end

return M
