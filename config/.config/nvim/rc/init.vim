set runtimepath^=~/.vim runtimepath+=~/.vim/after runtimepath+=~/vimfiles
let &packpath = &runtimepath

let g:loaded_gzip              = 1
let g:loaded_tar               = 1
let g:loaded_tarPlugin         = 1
let g:loaded_zip               = 1
let g:loaded_zipPlugin         = 1
let g:loaded_rrhelper          = 1
let g:loaded_2html_plugin      = 1
let g:loaded_vimball           = 1
let g:loaded_vimballPlugin     = 1
let g:loaded_getscript         = 1
let g:loaded_getscriptPlugin   = 1
let g:loaded_netrw             = 1
let g:loaded_netrwPlugin       = 1
let g:loaded_netrwSettings     = 1
let g:loaded_netrwFileHandlers = 1

setglobal fileformat=unix
setglobal formatoptions+=mb

if has('nvim')
    if has('win32')
        let g:python3_host_prog = 'C:\Users\im000556\AppData\Local\Programs\Python\Python39\python.exe'
    endif
    let g:loaded_python_provider = 0
endif

set nocompatible
set enc=utf-8
if exists('&ambw')
    set ambiwidth=single
endif
set fileencoding=utf-8
set fencs=utf-8,ucs-bom,iso-2022-jp,euc-jp,cp932,utf-16le,utf-16,default
"文字コードをUFT-8に設定
scriptencoding utf-8
"" バックアップファイルを作らない
set nobackup
"" スワップファイルを作らない
set noswapfile
"" 編集中のファイルが変更されたら自動で読み直す
set autoread
"" バッファが編集中でもその他のファイルを開けるように
set hidden
"" 入力中のコマンドをステータスに表示する
set showcmd
" クリップボードを使う
set clipboard+=unnamed

" 挿入モードでバックスペースで削除できるようにする
set backspace=indent,eol,start

" 補完の高さ
set pumheight=10

"" コマンドラインの補完
set wildmode=list:longest

let g:plug_shallow = 0

let g:vimspector_enable_mappings = 'HUMAN'

set helplang=ja,en

" =============
"" 見た目系
" =============
set expandtab
" インデント幅
set shiftwidth=4
" タブキー押下時に挿入される文字幅を指定
set softtabstop=4
" ファイル内にあるタブ文字の表示幅
set tabstop=4
"" 行番号を表示
set number
"" 現在の行を強調表示
set cursorline
"" インデントはスマートインデント
set smartindent
"" 括弧入力時の対応する括弧を表示
set showmatch
set matchtime=1
"" ステータスラインを常に表示
set laststatus=2
" 行末のスペースを可視化
set listchars=tab:^\ ,trail:~
syntax enable
set termguicolors
colorscheme iceberg
" colorscheme elly
set bg=dark

" =============
"" 検索系
" =============
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" augroup iceberg
"     au!
"     au ColorScheme * unlet g:terminal_ansi_colors
" augroup END
