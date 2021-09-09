local M = {}

    function M.config()

    require 'nvim-treesitter.configs'.setup {
        highlight = {
            enable = true,
            disable = {
                'vim',
            }
        },
        indent = {
          enable = true,
        },
        ensure_installed = 'maintained',
    }

    end

return M
