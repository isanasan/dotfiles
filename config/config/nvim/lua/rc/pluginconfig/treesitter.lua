local M = {}

    function M.config()

    require 'nvim-treesitter.configs'.setup {
        highlight = {
          enable = true,
        },
        indent = {
          enable = true,
        },
        ensure_installed = 'maintained',
    }

    end

return M
