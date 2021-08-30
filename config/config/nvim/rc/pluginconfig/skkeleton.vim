imap <C-j> <Plug>(skkeleton-enable)
cmap <C-j> <Plug>(skkeleton-enable)

call skkeleton#config({
\ 'globalJisyo': expand('~/.eskk/SKK-JISYO.L'),
\ 'eggLikeNewline': v:true
\ })

set imdisable
" augroup vimrc_eskk
"   autocmd!
"   autocmd InsertEnter * call s:markdown_eskk()
"   autocmd Filetype markdown nnoremap <buffer><silent> <F1> :call <SID>markdown_eskk_toggle()<CR>
" augroup END
" 
" let g:toggle_markdown_eskk = 1
" function! s:markdown_eskk() abort
"   if &filetype == 'markdown' && g:toggle_markdown_eskk ==# 1
"     <Plug>(skkeleton-enable)
"   endif
" endfunction

" function! s:markdown_eskk_toggle() abort
"   let g:toggle_markdown_eskk = g:toggle_markdown_eskk == 1 ? 0 : 1
"   if g:toggle_markdown_eskk ==# 1
"     echomsg 'Markdown日本語入力モードON'
"   else
"     echomsg 'Markdown日本語入力モードOFF'
"   endif
" endfunction

" augroup vimrc_eskk
"   autocmd!
"   autocmd User eskk-enable-post lmap <buffer> l <Plug>(eskk:disable)
" augroup END
