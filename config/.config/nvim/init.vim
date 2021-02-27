set runtimepath^=~/.vim runtimepath+=~/.vim/after runtimepath+=~/vimfiles
let &packpath = &runtimepath
if has('win32')
	source ~/vimfiles/vimrc
endif

if has('unix')
	source ~/.vim/vimrc
endif
