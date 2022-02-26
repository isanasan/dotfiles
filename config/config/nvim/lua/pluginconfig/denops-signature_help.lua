local M = {}

    function M.config()

        vim.fn['signature_help#enable']()
        vim.g.lsp_signature_help_enabled = 0
        vim.g.signature_help_config = {style = 'virtual'}

    end

return M

