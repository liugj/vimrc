source ~/.vim/plugin.vim

" encoding dectection
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on
filetype plugin on

" enable syntax hightlight and completion
syntax on

"--------
" Vim UI
"--------
" color scheme
 set background=dark
" color solarized

" highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" search
set incsearch
"set highlight 	" conflict with highlight current line
set ignorecase
set smartcase

" editor settings
set history=1000
set nocompatible
set nofoldenable                                                  " disable folding"
set confirm                                                       " prompt when existing from an unsaved file
set backspace=indent,eol,start                                    " More powerful backspacing
set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors "
set mouse=a                                                       " use mouse in all modes
set report=0                                                      " always report number of lines changed                "
set nowrap                                                        " dont wrap lines
set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
set number                                                        " show line numbers
set showmatch                                                     " show matching bracket (briefly jump)
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
set matchtime=2                                                   " show matching bracket for 0.2 seconds
set matchpairs+=<:>                                               " specially for html
" set relativenumber

" Default Indentation
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
" set textwidth=79
" set smarttab
set expandtab       " expand tab to space

autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120

" syntax support
autocmd Syntax javascript set syntax=jquery   " JQuery syntax support
" js
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

"-----------------
" Plugin settings
"-----------------
" Rainbow parentheses for Lisp and variants
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
autocmd Syntax lisp,scheme,clojure,racket RainbowParenthesesToggle

" tabbar
let g:Tb_MaxSize = 2
let g:Tb_TabWrap = 1

hi Tb_Normal guifg=white ctermfg=white
hi Tb_Changed guifg=green ctermfg=green
hi Tb_VisibleNormal ctermbg=252 ctermfg=235
hi Tb_VisibleChanged guifg=green ctermbg=252 ctermfg=white

" easy-motion
let g:EasyMotion_leader_key = '<Leader>'

" Tagbar
let g:tagbar_right=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
" tag for coffee
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }

  let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'sort' : 0,
    \ 'kinds' : [
        \ 'h:sections'
    \ ]
    \ }
endif

" Nerd Tree
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
" let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "left"

" nerdcommenter
let NERDSpaceDelims=1
" nmap <D-/> :NERDComToggleComment<cr>
let NERDCompactSexyComs=1

" ZenCoding
let g:user_emmet_expandabbr_key='<C-j>'

" powerline
"let g:Powerline_symbols = 'fancy'

" NeoComplCache
let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
set completeopt-=preview

imap <C-k> <Plug>(neocomplcache_snippets_force_expand)
smap <C-k> <Plug>(neocomplcache_snippets_force_expand)
imap <C-l> <Plug>(neocomplcache_snippets_force_jump)
smap <C-l> <Plug>(neocomplcache_snippets_force_jump)

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete
" autocmd FileType php setlocal omnifunc=phpcd#CompletePHP
" autocmd FileType php setlocal omnifunc=phpactor#Complete
autocmd FileType go setlocal omnifunc=gocomplete#Complete

" call deoplete#custom#option('sources', {'php' : ['omni', 'phpactor', 'ultisnips', 'buffer']})
" call deoplete#custom#option('sources', {'php' : ['phpactor']})

let g:phpactorPhpBin = "/usr/bin/php8.0"
let g:phpactorCompletionIgnoreCase=1
" let g:lsp_log_verbose = 1
" let g:lsp_log_file = expand('~/vim-lsp.log')
" let g:lsp_settings_filetype_php = 'intelephense'
let g:lsp_settings_filetype_php = 'psalm-language-server'

let go_term_enabled= 1
"let go_term_mode= "split"
let go_term_mode= "silent keepalt rightbelow 15 split"
"let go_term_mode= "slient! rightbelow split"
let g:go_term_reuse = 1
"let g:go_def_reuse_buffer = 1
let g:go_term_close_on_exit=0
let g:go_term_height = 3
"let g:go_term_enabled = 1
"let g:go_list_autoclose = 0
"let g:go_fmt_fail_silently = 0
"let g:go_fmt_command = "goimports"
"let g:go_list_type = "quickfix"
"let g:go_list_type_commands={"GoRun!": "", "GoRun": ""}
"let g:go_test_show_name=1


function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    inoremap <buffer> <expr><c-f> lsp#scroll(+4)
    inoremap <buffer> <expr><c-d> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
    
    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END


"au User lsp_setup call lsp#register_server({
"     \ 'name': 'psalm-language-server',
"     \ 'cmd': {server_info->[expand('psalm-language-server')]},
"     \ 'allowlist': ['php'],
"     \ })
let g:lsp_document_highlight_enabled=1

" augroup PhpactorMappings
"   au!
"   au FileType php nmap <buffer> <Leader>u :PhpactorImportClass<CR>
"   au FileType php nmap <buffer> <Leader>e :PhpactorClassExpand<CR>
"   au FileType php nmap <buffer> <Leader>ua :PhpactorImportMissingClasses<CR>
"   au FileType php nmap <buffer> <Leader>mm :PhpactorContextMenu<CR>
"   au FileType php nmap <buffer> <Leader>nn :PhpactorNavigate<CR>
"   au FileType php nmap <buffer> <C-]>   :PhpactorGotoDefinition<CR>
"   au FileType php nmap <buffer> <Leader>K :PhpactorHover<CR>
"   au FileType php nmap <buffer> <Leader>tt :PhpactorTransform<CR>
"   au FileType php nmap <buffer> <Leader>cc :PhpactorClassNew<CR>
"   au FileType php nmap <buffer> <Leader>ci :PhpactorClassInflect<CR>
"   au FileType php nmap <buffer> <Leader>fr :PhpactorFindReferences<CR>
"   au FileType php nmap <buffer> <Leader>mf :PhpactorMoveFile<CR>
"   au FileType php nmap <buffer> <Leader>cf :PhpactorCopyFile<CR>
"   au FileType php nmap <buffer> <silent> <Leader>ee
"       \ :PhpactorExtractExpression<CR>
"   au FileType php vmap <buffer> <silent> <Leader>ee
"       \ :<C-u>PhpactorExtractExpression<CR>
"   au FileType php vmap <buffer> <silent> <Leader>em
"       \ :<C-u>PhpactorExtractMethod<CR>
" augroup END


let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

let g:loaded_syntastic_cpp_cppcheck_checker=1
let g:loaded_syntastic_cpp_clang_tidy_checker = 1
let g:loaded_syntastic_cpp_gcc_checker = 0
let g:loaded_syntastic_cpp_avrgcc_checker = 1
let g:loaded_syntastic_cpp_clang_check_checker = 1
let g:loaded_syntastic_cpp_cppclean_checker = 1
let g:loaded_syntastic_cpp_oclint_checker = 1
let g:loaded_syntastic_cpp_cpplint_checker = 1
let g:loaded_syntastic_cpp_flawfinder_checker = 1
let g:loaded_syntastic_cpp_verapp_checker = 1
let g:loaded_syntastic_cpp_pc_lint_checker = 1


if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.erlang = '[a-zA-Z]\|:'

" SuperTab
" let g:SuperTabDefultCompletionType='context'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2

" ctrlp
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" Keybindings for plugin toggle
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
nmap <F7> :TagbarToggle<cr>
nmap <F6> :NERDTreeToggle<cr>
nmap <F3> :GundoToggle<cr>
nmap <F4> :IndentGuidesToggle<cr>
nmap  <D-/> :
nnoremap <leader>a :Ack
nnoremap <leader>v V`]

"------------------
" Useful Functions
"------------------
" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

" w!! to sudo & write a file
cmap w!! %!sudo tee >/dev/null %

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" sublime key bindings
nmap <D-]> >>
nmap <D-[> <<
vmap <D-[> <gv
vmap <D-]> >gv

" eggcache vim
nnoremap ; :
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa

" for macvim
if has("gui_running")
    set go=aAce  " remove toolbar
    "set transparency=30
    set guifont=Monaco:h13
    set showtabline=2
    set columns=140
    set lines=40
    noremap <D-M-Left> :tabprevious<cr>
    noremap <D-M-Right> :tabnext<cr>
    map <D-1> 1gt
    map <D-2> 2gt
    map <D-3> 3gt
    map <D-4> 4gt
    map <D-5> 5gt
    map <D-6> 6gt
    map <D-7> 7gt
    map <D-8> 8gt
    map <D-9> 9gt
    map <D-0> :tablast<CR>
endif

if has("unix")
   nmap xr :r $HOME/.vim/.vimxfer<CR>
   nmap xw :'a,.w! $HOME/.vim/.vimxfer<CR>
   vmap xr c<esc>:r $HOME/.vim/.vimxfer<CR>
   vmap xw :w! $HOME/.vim/.vimxfer<CR>
 else
   nmap xr :r c:/.vimxfer<CR>
   nmap xw :'a,.w! c:/.vimxfer<CR>
   vmap xr c<esc>:r c:/.vimxfer<cr>
   vmap xw :w! c:/.vimxfer<CR>
 endif
let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates_snip"
nnoremap <buffer> <C-y> :call pdv#DocumentWithSnip()<CR>
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeGlyphReadOnly = "RO"
"php-cs-fixer is in $PATH, you don't need to define line below
" let g:php_cs_fixer_path = "~/php-cs-fixer.phar" " define the path to the php-cs-fixer.phar

" If you use php-cs-fixer version 1.x
"let g:php_cs_fixer_level = "symfony"                   " options: --level (default:symfony)
"let g:php_cs_fixer_config = "default"                  " options: --config
" If you want to define specific fixers:
"let g:php_cs_fixer_fixers_list = "linefeed,short_tag" " options: --fixers
"let g:php_cs_fixer_config_file = '.php_cs'            " options: --config-file
" End of php-cs-fixer version 1 config params

" If you use php-cs-fixer version 2.x
let g:php_cs_fixer_rules = "@PSR2"          " options: --rules (default:@PSR2)
let g:php_cs_fixer_cache = ".php_cs.cache" " options: --cache-file
let g:php_cs_fixer_config_file = '.php_cs' " options: --config
" End of php-cs-fixer version 2 config params

let g:php_cs_fixer_php_path = "php"               " Path to PHP
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.
nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>
" call deoplete#custom#option({
" \ 'auto_complete_delay': 200,
" \ 'smart_case': v:true,
" \ 
" \ })
let g:deoplete#enable_at_startup = 1
let g:syntastic_php_checkers = ['php']


" let g:deoplete#enable_at_startup = 1
" php insert namespace 
" function! IPhpInsertUse()
"    call PhpInsertUse()
"    call feedkeys('a',  'n')
" endfunction
" autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
" autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>
" function! IPhpExpandClass()
"    call PhpExpandClass()
"    call feedkeys('a', 'n')
" endfunction
" autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
" autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>

" c++
let g:clang_format#style_options = {
            \ "BasedOnStyle" : "Google",
            \ "ColumnLimit" : 120,
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11"}
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:clang_format#auto_format_on_insert_leave=1

" let g:lsc_server_commands = {
" \  "go": {
" \    "command": "gopls serve",
" \    "log_level": 2,
" \    "suppress_stderr": v:true,
" \  },
" \  "php": {
" \    "command": "psalm-language-server",
" \    "log_level": 2,
" \    "suppress_stderr": v:true,
" \  },
" \}


" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc,cxx nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc,cxx vnoremap <buffer><Leader>cf :ClangFormat<CR>
" if you install vim-operator-user
autocmd FileType c,cpp,objc,cxx map <buffer><Leader>x <Plug>(operator-clang-format)
" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>
"===================================
""xdebug
"==================================
" let g:vdebug_options = {}
"let g:vdebug_options["port"] = 9010
"let g:vdebug_options["debug_file"] = "~/vdebug.log"
"let g:vdebug_options["debug_file_level"] = 2
"let g:vdebug_options['break_on_open'] = 0
