vim.cmd[[packadd packer.nvim]]

require'packer'.startup{
    function(use)
        use {'nvim-lua/popup.nvim'}
        use {'nvim-lua/plenary.nvim'}
        use {'vim-denops/denops.vim'}

        use{'wbthomason/packer.nvim', opt = true}

        use 'mattn/emoji-vim'
        use {
            'nvim-treesitter/nvim-treesitter',
            config = function() vim.cmd('source ~/.config/nvim/rc/pluginconfig/104-treesitter.vim') end 
        }
        use {
            'Shougo/deol.nvim',
            config = function() vim.cmd('source ~/.config/nvim/rc/pluginconfig/103-deol.vim') end
        }
        use 'thinca/vim-quickrun'

        use 'machakann/vim-sandwich'
        use 'unblevable/quick-scope'
        use 'rhysd/clever-f.vim'

        use 'cocopon/iceberg.vim'
        use 'ulwlu/elly.vim'
        use {
            'itchyny/lightline.vim',
            config = function() vim.cmd('source ~/.config/nvim/rc/pluginconfig/200-lightline.vim') end
        }

        -- markdown
        use {
            'plasticboy/vim-markdown',
            config = function() vim.cmd('source ~/.config/nvim/rc/pluginconfig/markdown.vim') end
        }
        use 'iamcco/markdown-preview.nvim'

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
        use 'cohama/lexima.vim'

        use 'tyru/caw.vim'
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
        use {
            'gelguy/wilder.nvim',
            config = function() vim.cmd('source ~/.config/nvim/rc/pluginconfig/102-wilder.vim') end
        }

        -- git
        use 'airblade/vim-gitgutter'
        use 'tpope/vim-fugitive'
        use 'itchyny/vim-gitbranch'
        use 'lambdalisue/gina.vim'

        use 'dbakker/vim-projectroot'

        use {
            'Shougo/ddc.vim',
            config = function() vim.cmd('source ~/.config/nvim/rc/pluginconfig/100-ddc.vim') end
        }

        use 'Shougo/ddc-around'
        use 'Shougo/ddc-matcher_head'
        use 'Shougo/ddc-sorter_rank'
        use 'shun/ddc-vim-lsp'

        use 'mattn/emmet-vim'
    end
}

