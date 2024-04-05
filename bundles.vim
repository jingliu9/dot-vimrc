set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
" Bundle 'gmarik/vundle'
" Bundle 'jingliu9/vundle'
Plugin 'VundleVim/Vundle.vim'

"------------------
" Code Completions
"------------------
Plugin 'mattn/emmet-vim'
Plugin 'Raimondi/delimitMate'
Plugin 'ervandew/supertab'
if has('nvim')
  Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plugin 'Shougo/deoplete.nvim'
  Plugin 'roxma/nvim-yarp'
  Plugin 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 0
" snippets
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
"------ snipmate dependencies -------
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
"------ header ------
Plugin 'shanzi/autoHEADER'

"-----------------
" Fast navigation
"-----------------
" Bundle 'edsono/vim-matchit'
Plugin 'Lokaltog/vim-easymotion'

"--------------
" Fast editing
"--------------
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mbbill/undotree'
" Bundle 'sjl/gundo.vim' (not compatible anymore, alas)
Plugin 'godlygeek/tabular'
Plugin 'nathanaelkane/vim-indent-guides'

"--------------
" Table Formatter
"--------------
Plugin 'dhruvasagar/vim-table-mode'

"--------------
" IDE features
"--------------
Plugin 'scrooloose/nerdtree'
Plugin 'humiaozuzu/TabBar'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'bronson/vim-trailing-whitespace'

"-------------
" Other Utils
"-------------
" Bundle 'humiaozuzu/fcitx-status'
Bundle 'nvie/vim-togglemouse'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
"------- web backend ---------
" Bundle '2072/PHP-Indenting-for-VIm'
" Bundle 'tpope/vim-rails'
" Bundle 'lepture/vim-jinja'
" Bundle 'digitaltoad/vim-jade'

"------- web frontend ----------
Bundle 'othree/html5.vim'
" Bundle 'tpope/vim-haml'
" Bundle 'pangloss/vim-javascript'
" Bundle 'kchmck/vim-coffee-script'
" Bundle 'nono/jquery.vim'
" Bundle 'groenewege/vim-less'
" Bundle 'wavded/vim-stylus'
" Bundle 'nono/vim-handlebars'

"------- markup language -------
" Bundle 'tpope/vim-markdown'
" Bundle 'timcharper/textile.vim'
Bundle 'preservim/vim-markdown'
Bundle 'instant-markdown/vim-instant-markdown'
Bundle 'chrisbra/csv.vim'

"------- R --------
Bundle 'jalvesaq/Nvim-R'

"------- Go ----------
Bundle 'fatih/vim-go'

"------- Rust ----------
Bundle 'rust-lang/rust.vim'

"------- FPs ------
Bundle 'kien/rainbow_parentheses.vim'
" Bundle 'wlangstroth/vim-racket'
" Bundle 'vim-scripts/VimClojure'
" Bundle 'rosstimson/scala-vim-support'
Bundle "neovimhaskell/haskell-vim"
Bundle 'ocaml/vim-ocaml'
Bundle "whonore/Coqtail"
Bundle "mlr-msft/vim-loves-dafny"

"--------------
" Color Schemes
"--------------
Bundle 'rickharris/vim-blackboard'
Bundle 'altercation/vim-colors-solarized'
Bundle 'rickharris/vim-monokai'
Bundle 'tpope/vim-vividchalk'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'fisadev/fisa-vim-colorscheme'

call vundle#end()            " required

filetype plugin indent on     " required!
