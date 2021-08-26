vim.cmd[[packadd packer.nvim]]

require'packer'.startup{
    function(use)
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

        -- filetree
        use 'lambdalisue/nerdfont.vim'
        use {
            'lambdalisue/fern.vim',
            config = function() vim.cmd('source ~/.config/nvim/rc/pluginconfig/102-fern.vim') end
        }
        use 'lambdalisue/fern-renderer-nerdfont.vim'
        use 'lambdalisue/glyph-palette.vim'
        use 'lambdalisue/fern-hijack.vim'

        --ctrlP
        use {
            'ctrlpvim/ctrlp.vim',
            config = function() vim.cmd('source ~/.config/nvim/rc/pluginconfig/101-ctrlp.vim') end
            }
        use 'mattn/ctrlp-launcher'
        use 'mattn/ctrlp-lsp'
        use 'mattn/ctrlp-yo'
        use 'mattn/ctrlp-git'

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
            'tyru/eskk.vim',
            config = function() vim.cmd('source ~/.config/nvim/rc/pluginconfig/111-eskk.vim') end
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

        if vim.fn.has('unix') then
            use 'puremourning/vimspector'
            use 'deoplete-plugins/deoplete-zsh'
        end

        -- git
        use 'airblade/vim-gitgutter'
        use 'tpope/vim-fugitive'
        use 'itchyny/vim-gitbranch'
        use 'lambdalisue/gina.vim'

        use 'dbakker/vim-projectroot'
        use {
            'Shougo/deoplete.nvim',
            config = function() vim.cmd('source ~/.config/nvim/rc/pluginconfig/100-deoplete.vim') end
        }
        use 'lighttiger2505/deoplete-vim-lsp'

        use 'mattn/emmet-vim'

        use 'nvim-lua/plenary.nvim'
    end
}

