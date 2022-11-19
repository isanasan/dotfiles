local M = {}

function M.config()

    vim.g['fern#renderer'] = 'nerdfont'
    vim.g['fern#default_hidden'] = 1
    vim.api.nvim_set_keymap('n',',t',':<c-u>Fern . -drawer -stay -keep -toggle -reveal=%<cr>',{
        noremap = true,
        silent = true})

    vim.cmd([[
        " fern open window config
        function! s:fern_setup() abort
            nnoremap <buffer> <nowait> q :<c-u>quit<cr>
            setl nonumber
            nmap <buffer> <Plug>(fern-action-open) <Plug>(fern-action-open:select)
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
    ]])

end

return M

