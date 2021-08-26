function! s:on_lsp_buffer_enabled() abort
	setlocal omnifunc=lsp#complete
	setlocal signcolumn=yes
	nmap <buffer> gd <plug>(lsp-definition)
	nmap <buffer> <f2> <plug>(lsp-rename)
	" inoremap <expr><Tab> pumvisible() ? "\<C-y>" : "\<Tab>"
	" inoremap <expr><CR> pumvisible() ? "\<C-p>\<CR>\<C-f>" : "\<CR>"

	autocmd BufWritePre <buffer>
				\ call execute('LspCodeActionSync source.organizeImports')

	autocmd BufWritePre <buffer> LspDocumentFormatSync

endfunction

augroup lsp_install
	au!
	autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
command! LspDebug let lsp_log_verbose=1 | let lsp_log_file = expand('~/lsp.log')

let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
" let g:asyncomplete_auto_popup = 1
" let g:asyncomplete_auto_completeopt = 0
" let g:asyncomplete_popup_delay = 200
let g:lsp_text_edit_enabled = 1 
let g:lsp_preview_float = 1
let g:lsp_diagnostics_float_cursor = 1
let g:lsp_settings_filetype_go = ['gopls', 'golangci-lint-langserver']
" 補完候補の設定
"set completeopt=menuone,noinsert,noselect
set completeopt=menuone,noinsert

inoremap <expr><C-n> pumvisible() ? "\<Down>" : "\<C-n>"
inoremap <expr><C-p> pumvisible() ? "\<Up>" : "\<C-p>"
