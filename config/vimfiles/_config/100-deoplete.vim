UsePlugin 'deoplete.nvim'

let g:deoplete#enable_at_startup = 1

call deoplete#custom#option({
\ 'auto_complete_delay': 0,
\ 'smart_case': v:true,
\ 'nofile_complete_filetypes': ['fern'],
\ })

augroup deoplete
	autocmd!
	autocmd FileType fern call deoplete#custom#buffer_option('auto_complete', v:false)
augroup END

