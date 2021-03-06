UsePlugin 'deol.nvim'

nnoremap [deol]	<Nop>
nmap     <Space>d [deol]

nnoremap <silent> [deol]b :<C-u>Deol<CR>

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
