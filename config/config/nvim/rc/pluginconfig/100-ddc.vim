call ddc#custom#patch_global('sources', ['around','eskk', 'ddc-vim-lsp'])
call ddc#custom#patch_global('sourceOptions', {
      \ 'around': {'mark': 'A'},
      \ 'eskk': {'mark': 'eskk'},
      \ 'ddc-vim-lsp': {'mark': 'LSP','minAutoCompleteLength': 0},
      \ '_': {
      \   'matchers': ['matcher_head'],
      \   'sorters': ['sorter_rank']},
      \ })
call ddc#enable()
