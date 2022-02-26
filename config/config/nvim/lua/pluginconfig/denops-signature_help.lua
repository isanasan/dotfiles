local M = {}

    function M.config()

        vim.cmd([[
            call signature_help#enable()
            let g:lsp_signature_help_enabled = 0
            let g:signature_help_config = {'style': "virtual"}
        ]])

    end

return M

