" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

"------------------       
" Code Completions        
"------------------       
" Plug 'vim-vdebug/vdebug'
Plug 'vim-scripts/progressbar-widget' 
" deoplete
"if has('nvim')
"  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
"  Plug 'Shougo/deoplete.nvim'
"  Plug 'roxma/nvim-yarp'
"  Plug 'roxma/vim-hug-neovim-rpc'
"  Plug 'lighttiger2505/deoplete-vim-lsp'
"endif

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

Plug 'jigish/vim-eclim'
Plug 'Shougo/context_filetype.vim'

Plug 'mattn/emmet-vim'
"Plug 'Raimondi/delimitMate'
Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
" snippets
" Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
"------ snipmate dependencies -------
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'

"-----------------
" Fast navigation
"-----------------
Plug 'https://github.com/adelarsq/vim-matchit'
Plug 'Lokaltog/vim-easymotion'

"--------------
" Fast editing
"--------------
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'sjl/gundo.vim'
Plug 'godlygeek/tabular'
Plug 'nathanaelkane/vim-indent-guides'

"--------------
" IDE features
"--------------
Plug 'scrooloose/nerdtree'
Plug 'humiaozuzu/TabBar'
Plug 'majutsushi/tagbar'
Plug 'mileszs/ack.vim'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'Lokaltog/vim-powerline'
Plug 'scrooloose/syntastic'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'bronson/vim-trailing-whitespace'
Plug 'rhysd/vim-clang-format'

"-------------
" Other Utils
"-------------
" Plug 'humiaozuzu/fcitx-status'
Plug 'nvie/vim-togglemouse'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
"------- web backend ----------
Plug '2072/PHP-Indenting-for-VIm'
" Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}
" Plug 'camilledejoye/phpactor-mappings'
" Plug 'kristijanhusak/deoplete-phpactor'
" Plug 'phpactor/coc-phpactor'
Plug 'lepture/vim-jinja'
"------- php-doc --------------
Plug 'tobyS/pdv'
Plug 'tobyS/vmustache'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"------- php-cs-fixer ----------
" Plug 'stephpy/vim-php-cs-fixer'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'aeke/vim-php-cs-fixer'

"------- web frontend ----------
Plug 'othree/html5.vim'
" Plug 'tpope/vim-haml'
Plug 'pangloss/vim-javascript'
Plug 'kchmck/vim-coffee-script'
Plug 'nono/jquery.vim'
" Plug 'groenewege/vim-less'
" Plug 'wavded/vim-stylus'
" Plug 'nono/vim-handlebars'
"------- markup language -------
Plug 'tpope/vim-markdown'
" Plug 'timcharper/textile.vim'
"------- Ruby --------
" Plug 'tpope/vim-endwise'
"------- Go ----------
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries'  }
" Plug 'natebosch/vim-lsc'
" Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh'  }
" Plug 'Blackrush/vim-gocode'
" ------- FPs ------
Plug 'kien/rainbow_parentheses.vim'
" Plug 'wlangstroth/vim-racket'
" Plug 'vim-scripts/VimClojure'
" Plug 'rosstimson/scala-vim-support'

"--------------
" Color Schemes
"--------------
Plug 'rickharris/vim-blackboard'
Plug 'altercation/vim-colors-solarized'
Plug 'rickharris/vim-monokai'
Plug 'tpope/vim-vividchalk'
Plug 'Lokaltog/vim-distinguished'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'fisadev/fisa-vim-colorscheme'

" Plug 'rust-lang/rust.vim'

" Initialize plugin system
call plug#end()
