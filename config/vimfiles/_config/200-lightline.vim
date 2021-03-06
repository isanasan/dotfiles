UsePlugin 'lightline.vim'

set noshowmode

let g:lightline = {
    \ 'enable': { 'tabline': 0 },
    \ 'colorscheme': 'iceberg',
    \ 'mode_map': {'c': 'NORMAL'},
    \ 'active': {
    \   'left': [ ['mode', 'paste'], ['gitbranch', 'filename','eskk'] ]
    \ },
    \ 'component': {
    \   'lineinfo': ' %3l:%-2v',
    \ },
    \ 'component_function': {
    \   'modified': 'MyModified',
    \   'readonly': 'MyReadonly',
    \   'gitbranch': 'MyGitBranch',
    \   'filename': 'MyFilename',
    \   'fileformat': 'MyFileformat',
    \   'filetype': 'MyFiletype',
    \   'fileencoding': 'MyFileencoding',
    \   'mode': 'MyMode',
    \   'eskk': 'L_eskk_get_mode'
    \ }
\ }

function L_eskk_get_mode()
    if (mode() == 'i') && eskk#is_enabled()
        " return g:eskk#statusline_mode_strings[eskk#get_mode()]
        return g:eskk#statusline()
    else
        return ''
    endif
endfunction

function! MyModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! MyReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? ' ' : ''
endfunction

function! MyFilename()
  return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

function! MyGitBranch()
    try
        return ' ' . gitbranch#name()
    catch
    endtry
        return ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! MyFileencoding()
  return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! MyMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction
