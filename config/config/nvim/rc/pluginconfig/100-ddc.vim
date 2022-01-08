call ddc#custom#patch_global('sources', ['vsnip','vim-lsp','file','around'])
call ddc#custom#patch_global('sourceOptions', {
     \ 'vsnip': {
     \   'mark': 'VSNIP',
     \   'isVolatile': v:true,
     \ },
     \ 'vim-lsp': {'mark': 'LSP','minAutoCompleteLength': 0},
     \ 'file': {
     \   'mark': 'F',
     \   'isVolatile': v:true,
     \   'forceCompletionPattern': '\S/\S*',
     \ },
     \ 'around': {'mark': 'A'},
     \ '_': {
     \   'matchers': ['matcher_head'],
     \   'sorters': ['sorter_rank']},
     \ })
call ddc#custom#patch_filetype(
    \ ['ps1', 'dosbatch', 'autohotkey', 'registry'], {
    \ 'sourceOptions': {
    \   'file': {
    \     'forceCompletionPattern': '\S\\\S*',
    \   },
    \ },
    \ 'sourceParams': {
    \   'file': {
    \     'mode': 'win32',
    \   },
    \ }})
call ddc#enable()

autocmd User skkeleton-enable-pre call s:skkeleton_pre()
    function! s:skkeleton_pre() abort
        " Overwrite sources
        let s:prev_buffer_config = ddc#custom#get_buffer()
        call ddc#custom#patch_buffer('sources', ['skkeleton'])
        call ddc#custom#patch_buffer('sourceOptions', { 'vim-lsp': {'mark': 'SKK','minAutoCompleteLength': 0}}
    endfunction

autocmd User skkeleton-disable-pre call s:skkeleton_post()
    function! s:skkeleton_post() abort
        " Restore sources
        call ddc#custom#set_buffer(s:prev_buffer_config)
    endfunction

