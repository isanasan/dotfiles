let mapleader = "\<Space>"

nnoremap <silent> <C-n> :<C-u>cnext<CR>
nnoremap <silent> <C-p> :<C-u>cprev<CR>

nmap <leader>c <Plug>(caw:hatpos:toggle)
vmap <leader>c <Plug>(caw:hatpos:toggle)

tnoremap <C-g> <C-\><C-n>
" tnoremap <ESC> <C-\><C-n>

noremap <S-h> 0
noremap <S-l> $

nnoremap Y y$

nnoremap p ]p
nnoremap P ]P

vnoremap < <gv
vnoremap > >gv

"" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
