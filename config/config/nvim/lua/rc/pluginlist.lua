vim.cmd[[packadd packer.nvim]]

local nocode = function()
  return vim.fn.exists('g:vscode') == 0
end

require'packer'.startup({function(use)
    use {'nvim-lua/popup.nvim'}
    use {'nvim-lua/plenary.nvim'}

    use {'wbthomason/packer.nvim', opt = true}

    use {
        'rhysd/clever-f.vim',
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        config = [[require("rc.pluginconfig.treesitter").config()]]
    }

    use 'thinca/vim-quickrun'

    use 'machakann/vim-sandwich'
    use 'unblevable/quick-scope'

    use 'cocopon/iceberg.vim'
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
        'kat0h/bufpreview.vim',
    }

    -- filetree
    use 'lambdalisue/nerdfont.vim'
    use {
        'lambdalisue/fern.vim',
        config = [[require("rc.pluginconfig.fern").config()]]
    }
    use 'lambdalisue/fern-renderer-nerdfont.vim'
    use 'lambdalisue/glyph-palette.vim'
    use 'lambdalisue/fern-hijack.vim'

    use 'mattn/vim-lsp-icons'

    use {
        'hrsh7th/vim-vsnip',
        config = [[require("rc.pluginconfig.vsnip").config()]]
    }

    use {
        'hrsh7th/vim-vsnip-integ',
    }

    -- others
    use {'cohama/lexima.vim',event = 'InsertEnter *'}

    use {
        'tyru/caw.vim',
        config = [[require("rc.pluginconfig.caw").config()]]
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
        "lukas-reineke/indent-blankline.nvim"
    }

    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        config = [[require("rc.pluginconfig.bufferline").config()]],
    }

    -- git
    use 'airblade/vim-gitgutter'
    use 'itchyny/vim-gitbranch'
    use 'lambdalisue/gina.vim'

    use 'mattn/emmet-vim'

    -- denops
    use {'vim-denops/denops.vim'}

    use {
        'vim-skk/denops-skkeleton.vim',
        config = function() vim.cmd('source ~/.config/nvim/rc/pluginconfig/skkeleton.vim') end
    }

    -- ddc
    use {
        'Shougo/ddc.vim',
        config = function() vim.cmd('source ~/.config/nvim/rc/pluginconfig/100-ddc.vim') end
    }

    use 'Shougo/ddc-around'
    use 'Shougo/ddc-matcher_head'
    use 'Shougo/ddc-sorter_rank'
    use 'tani/ddc-fuzzy'
    use 'shun/ddc-vim-lsp'
    use 'LumaKernel/ddc-file'
    use {
        'matsui54/denops-signature_help',
        config = [[require("rc.pluginconfig.denops-signature_help").config()]],
    }

    use {
        'Shougo/deol.nvim',
        config = function() vim.cmd('source ~/.config/nvim/rc/pluginconfig/103-deol.vim') end,
        cond = { nocode },
    }

   --telescope
    use {
        'nvim-telescope/telescope.nvim',
        config = function() require 'rc/pluginconfig/telescope' end,
        cond = { nocode },
    }
    --vimlsp
    use {
        'prabirshrestha/vim-lsp',
        config = function() vim.cmd('source ~/.config/nvim/rc/pluginconfig/lsp.vim') end,
        cond = { nocode },
    }
    use {
        'mattn/vim-lsp-settings',
        cond = { nocode },
    }

    use {
        'gelguy/wilder.nvim',
        config = [[require("rc.pluginconfig.wilder").config()]],
        cond = { nocode },
    }
end})

