vim.cmd[[packadd packer.nvim]]

require'packer'.startup{
    function(use)
        use {'nvim-lua/popup.nvim'}
        use {'nvim-lua/plenary.nvim'}
        use {'vim-denops/denops.vim'}

        use {'wbthomason/packer.nvim', opt = true}

        use {
            'ggandor/lightspeed.nvim',
        }

        use {
            'nvim-treesitter/nvim-treesitter',
            config = [[require("rc.pluginconfig.treesitter").config()]]
        }
        use {
            'Shougo/deol.nvim',
            config = function() vim.cmd('source ~/.config/nvim/rc/pluginconfig/103-deol.vim') end
        }
        use 'thinca/vim-quickrun'

        use 'machakann/vim-sandwich'
        use 'unblevable/quick-scope'

        use 'cocopon/iceberg.vim'
        use 'ulwlu/elly.vim'
        use {
            'itchyny/lightline.vim',
            config = function() vim.cmd('source ~/.config/nvim/rc/pluginconfig/200-lightline.vim') end
        }

        -- markdown
        use {
            'plasticboy/vim-markdown',
            ft = {'markdown'},
            config = [[require("rc.pluginconfig.markdown").config()]]
        }
        use {
            'iamcco/markdown-preview.nvim',
            ft = {'markdown'},
            run =  'cd app && yarn install',
            config = [[require("rc.pluginconfig.mkdp").config()]]
        }

       --telescope
        use {
            'nvim-telescope/telescope.nvim',
            config = function() require 'rc/pluginconfig/telescope' end
        }

        -- filetree
        use 'lambdalisue/nerdfont.vim'
        use {
            'lambdalisue/fern.vim',
            config = function() vim.cmd('source ~/.config/nvim/rc/pluginconfig/102-fern.vim') end
        }
        use 'lambdalisue/fern-renderer-nerdfont.vim'
        use 'lambdalisue/glyph-palette.vim'
        use 'lambdalisue/fern-hijack.vim'

        --vimlsp
        use {
            'prabirshrestha/vim-lsp',
            config = function() vim.cmd('source ~/.config/nvim/rc/pluginconfig/lsp.vim') end
        }
        use 'mattn/vim-lsp-settings'
        use 'mattn/vim-lsp-icons'

        -- others
        use {'cohama/lexima.vim',event = 'InsertEnter *'}

        use {
            'tyru/caw.vim',
            config = [[require("rc.pluginconfig.caw").config()]]
        }
        use {
            'kuuote/denops-skkeleton.vim',
            config = function() vim.cmd('source ~/.config/nvim/rc/pluginconfig/skkeleton.vim') end
        }
        use 'skanehira/gyazo.vim'
        use 'machakann/vim-highlightedyank'
        use 'tversteeg/registers.nvim'
        use 'bfredl/nvim-miniyank'
        use {
            'mattn/vim-sonictemplate',
            config = function() vim.cmd('source ~/.config/nvim/rc/pluginconfig/110-sonictemplate.vim') end
        }
        

        -- git
        use 'airblade/vim-gitgutter'
        use 'itchyny/vim-gitbranch'
        use 'lambdalisue/gina.vim'

        -- ddc
        use {
            'Shougo/ddc.vim',
            config = function() vim.cmd('source ~/.config/nvim/rc/pluginconfig/100-ddc.vim') end
        }

        use 'Shougo/ddc-around'
        use 'Shougo/ddc-matcher_head'
        use 'Shougo/ddc-sorter_rank'
        use 'shun/ddc-vim-lsp'
        use 'Shougo/ddc-nextword'

        use 'mattn/emmet-vim'

        use {
            'gelguy/wilder.nvim',
            config = [[require("rc.pluginconfig.wilder").config()]],
            cond = [[nocode]],
        }
    end
}

local nocode = function()
  return vim.fn.exists('g:vscode') == 0
end

