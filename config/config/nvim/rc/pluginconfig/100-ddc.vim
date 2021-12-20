call ddc#custom#patch_global('sources', ['vim-lsp','file','around','nextword'])
call ddc#custom#patch_global('sourceOptions', {
     \ 'vim-lsp': {'mark': 'LSP','minAutoCompleteLength': 0},
     \ 'file': {
     \   'mark': 'F',
     \   'isVolatile': v:true,
     \   'forceCompletionPattern': '\S/\S*',
     \ },
     \ 'around': {'mark': 'A'},
     \ 'nextword': {'mark': 'nextword','minAutoCompleteLength': 3},
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
