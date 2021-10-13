" fern settings
let g:fern#renderer = "nerdfont"
let g:fern#default_hidden=1

" fern toggle command
nnoremap <silent>,t :<c-u>Fern . -drawer -stay -keep -toggle -reveal=%<cr>

" fern open window config
function! s:fern_setup() abort
	nnoremap <buffer> <nowait> q :<c-u>quit<cr>
    set nonumber
	nmap <buffer>
		\ <Plug>(fern-action-open)
		\ <Plug>(fern-action-open:select)
endfunction

augroup my-glyph-palette
autocmd! *
autocmd FileType fern call glyph_palette#apply()
autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

augroup __fern__
	au!
    autocmd VimEnter * ++nested if(empty(&filetype)) | Fern . -drawer -stay -keep -toggle -reveal=% | endif
	autocmd FileType fern call s:fern_setup()
augroup END

