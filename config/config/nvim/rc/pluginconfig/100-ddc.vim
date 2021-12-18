call ddc#custom#patch_global('sources', ['vim-lsp','around','nextword','treesitter'])
call ddc#custom#patch_global('sourceOptions', {
      \ 'vim-lsp': {'mark': 'LSP','minAutoCompleteLength': 0},
      \ 'around': {'mark': 'A'},
      \ 'nextword': {'mark': 'nextword','minAutoCompleteLength': 3},
      \ 'treesitter': {'mark': 'TS'},
      \ '_': {
      \   'matchers': ['matcher_head'],
      \   'sorters': ['sorter_rank']},
      \ })
call ddc#enable()
