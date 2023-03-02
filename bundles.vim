set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
" Bundle 'gmarik/vundle'
Bundle 'jingliu9/vundle'

"------------------
" Code Completions
"------------------
Bundle 'mattn/emmet-vim'
Bundle 'Raimondi/delimitMate'
Bundle 'ervandew/supertab'
if has('nvim')
  Bundle 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Bundle 'Shougo/deoplete.nvim'
  Bundle 'roxma/nvim-yarp'
  Bundle 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 0
" snippets
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
"------ snipmate dependencies -------
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
"------ header ------
Bundle 'shanzi/autoHEADER'

"-----------------
" Fast navigation
"-----------------
" Bundle 'edsono/vim-matchit'
Bundle 'Lokaltog/vim-easymotion'

"--------------
" Fast editing
"--------------
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'sjl/gundo.vim'
Bundle 'godlygeek/tabular'
Bundle 'nathanaelkane/vim-indent-guides'

"--------------
" Table Formatter
"--------------
Bundle 'dhruvasagar/vim-table-mode'

"--------------
" IDE features
"--------------
Bundle 'scrooloose/nerdtree'
Bundle 'humiaozuzu/TabBar'
Bundle 'majutsushi/tagbar'
Bundle 'mileszs/ack.vim'
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

filetype plugin indent on     " required!
