call ddc#custom#patch_global('sources', ['around','vim-lsp','nextword','skkeleton'])
call ddc#custom#patch_global('sourceOptions', {
      \ 'around': {'mark': 'A'},
      \ 'vim-lsp': {'mark': 'LSP','minAutoCompleteLength': 0},
      \ 'nextword': {'mark': 'nextword','minAutoCompleteLength': 3},
      \ 'skkeleton': {'mark': 'skk','matchers':['skkeleton'],'sorters':[]},
      \ '_': {
      \   'matchers': ['matcher_head'],
      \   'sorters': ['sorter_rank']},
      \ })
call ddc#enable()
