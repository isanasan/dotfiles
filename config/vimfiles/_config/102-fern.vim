UsePlugin 'fern.vim'

" fern settings
let g:fern#renderer = "nerdfont"

" fern toggle command
nnoremap <silent>,t :<c-u>Fern . -drawer -stay -keep -toggle -reveal=%<cr>

" fern open window config
function! s:fern_setup() abort
	nnoremap <buffer> <nowait> q :<c-u>quit<cr>
	nmap <buffer>
		\ <Plug>(fern-action-open)
		\ <Plug>(fern-action-open:select)
endfunction

augroup __fern__
	au!
    autocmd VimEnter * ++nested if(empty(&filetype)) | Fern . -drawer -stay -keep -toggle -reveal=% | endif
	autocmd FileType fern call s:fern_setup()
augroup END


