imap <C-j> <Plug>(skkeleton-enable)
cmap <C-j> <Plug>(skkeleton-enable)

call skkeleton#config({
\ 'globalJisyo': expand('~/.eskk/SKK-JISYO.L'),
\ 'eggLikeNewline': v:true
\ })

set imdisable
