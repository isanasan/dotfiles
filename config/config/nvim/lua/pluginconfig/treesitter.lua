local M = {}

    function M.config()

    require 'nvim-treesitter.install'.compilers = { "clang" }
    require 'nvim-treesitter.configs'.setup {
        highlight = {
            enable = true,
            disable = {
                'vim',
                'rst',
            }
        },
        indent = {
          enable = true,
        },
        ensure_installed = 'maintained',
    }

    end

return M
