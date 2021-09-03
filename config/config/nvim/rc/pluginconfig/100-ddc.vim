call ddc#custom#patch_global('sources', ['around','ddc-vim-lsp','nextword'])
call ddc#custom#patch_global('sourceOptions', {
      \ 'around': {'mark': 'A'},
      \ 'ddc-vim-lsp': {'mark': 'LSP','minAutoCompleteLength': 0},
      \ 'nextword': {'mark': 'nextword','minAutoCompleteLength': 3},
      \ '_': {
      \   'matchers': ['matcher_head'],
      \   'sorters': ['sorter_rank']},
      \ })
call ddc#enable()
