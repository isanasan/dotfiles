local M = {}

    function M.config()

        vim.cmd([[
            call signature_help#enable()
            let g:lsp_signature_help_enabled = 0
        ]])

    end

return M

