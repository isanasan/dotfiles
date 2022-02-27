nnoremap [deol]	<Nop>
nmap     <Space>d [deol]

if has('win32')
    set sh=pwsh
    set shellcmdflag=-c
    set shellquote=\"
    set shellxquote=
endif

nnoremap <silent> [deol]b :<C-u>Deol<CR>
nnoremap <silent> [deol]l :<C-u>Deol -toggle lazygit.exe<CR>
tnoremap <silent> <a-l> <c-\><c-n>

let g:deol#custom_map = {
\ 'edit': 'e',
\ 'start_insert': 'i',
\ 'start_insert_first': 'I',
\ 'start_append': 'a',
\ 'start_append_last': 'A',
\ 'execute_line': '<CR>',
\ 'previous_prompt': '[deol]p',
\ 'next_prompt': '<C-n>',
\ 'paste_prompt': '<C-y>',
\ 'bg': '<C-z>',
\ 'quit': 'q',
\ }
