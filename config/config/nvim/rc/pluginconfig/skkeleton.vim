imap <C-j> <Plug>(skkeleton-toggle)
cmap <C-j> <Plug>(skkeleton-toggle)

call skkeleton#config({
\ 'globalJisyo': expand('~/.eskk/SKK-JISYO.L'),
\ 'eggLikeNewline': v:true
\ })

set imdisable
