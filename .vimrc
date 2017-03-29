set rtp+=~/.vim/bundle/Vundle.vim
set nocompatible              " be iMproved, required

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" For Javascript
Plug 'marijnh/tern_for_vim' " To enable tags
Plug 'claco/jasmine.vim'
"Plug 'burnettk/vim-angular' "for AngularJS
Plug 'othree/yajs.vim' ", { 'for': 'javascript' }
"Plug 'bigfish/vim-js-context-coloring'
" Plug 'beautify-web/js-beautify' "To beautify ugly javascript files
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'mxw/vim-jsx' "For JSX
Plug 'bentayloruk/vim-react-es6-snippets'
Plug 'jaxbot/syntastic-react' "ESLint for React.JS
Plug 'joegesualdo/jsdoc.vim' "To generate JSDoc comments
Plug 'isruslan/vim-es6' "For EcmaScript 6
Plug 'moll/vim-node' "For NodeJS
Plug 'othree/es.next.syntax.vim' "For EcmaScript 7
Plug 'posva/vim-vue' "For vueJS

" Java
Plug 'rudes/vim-java'

Plug 'hsanson/vim-android'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'tfnico/vim-gradle'

" To compile Java applications
Plug 'tpope/vim-dispatch'

"GraphQL
Plug 'jparise/vim-graphql'

" Jade
Plug 'jadejs/jade'

" For Karma
Plug 'maksimr/vim-karma'

" For JSON
Plug 'elzr/vim-json'

" For HTML5
Plug 'othree/html5.vim'

" For Python
Plug 'klen/python-mode'
Plug 'alfredodeza/pytest.vim' "To run tests with :Pytest

" Utilities
"Plug 'ctrlpvim/ctrlp.vim' "Fuzzy file, buffer, mru, tag
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/syntastic' "syntax check. For javascript, need to install jshint: npm install -g jshint
Plug 'bling/vim-airline' "for the status bar
Plug 'vim-airline/vim-airline-themes' " themes for the status bar
Plug 'kien/rainbow_parentheses.vim' " To get different colors for matching parenthesis, etc
Plug 'tpope/vim-surround' "to easily surround expressions with quotes, etc 
Plug 'junegunn/vim-easy-align' "To align anything easily
Plug 'nathanaelkane/vim-indent-guides' "To show visually the indent level

Plug 'valloric/youcompleteme' " Completion
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive' " For git
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'easymotion/vim-easymotion' " To search quickly

" Snippets
" Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'

" Colors
Plug 'flazz/vim-colorschemes'



" To handle tags easily
Plug 'majutsushi/tagbar' "To create tags. Need Exhuberant-ctags
" Plug 'xolox/vim-easytags'
" Plug 'xolox/vim-misc'

" All of your Plugs must be added before the following line

" Initialize plugin system
call plug#end()

" Disable arrow keys to move the cursor
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

filetype plugin indent on    " required
"syntax on

"Turn On Python mode
let g:pymode = 1
let g:pymode_trim_whitespaces = 1
let g:pymode_options = 1
let g:pymode_options_max_line_length = 79
let g:pymode_options_colorcolumn = 1
let g:pymode_quickfix_minheight = 3
let g:pymode_quickfix_maxheight = 6
let g:pymode_python = 'python3' "To use /usr/bin/python3 by default

let mapleader = "\\"

"AirLine related stuff: display all buffers when only one tab is opened
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline_theme='base16'

" To open a tagbar
nmap <F8> :TagbarToggle<CR>

" Foldmethod
set foldmethod=syntax 

"""" Rainbow parenthesis settings
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

let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"""" End of settings for Rainbow parenthesis

"===========================================
" For youCompleteMe and UltiSnippets
"===========================================
" java completion
set omnifunc=syntaxcomplete#Complete
let g:EclimCompletionMethod='omnifunc'"
"========
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

" ycm options
" let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0
let g:ycm_auto_trigger = 1
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_min_num_of_chars_for_completion = 2
" let g:ycm_use_ultisnips_completer = 1
let g:EclimCompletionMethod = 'omnifunc'
let g:ycm_python_binary_path = 'python2'
""""SuperTab
let g:SuperTabDefaultCompletionType = '<C-n>'
" let g:SuperTabDefaultCompletionType = "context"
" let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
" let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit = 'horizontal'
let g:UltiSnipsSnippetDirectories = ["snips"]

""""" NerdCommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


"""" Vim EasyMotion
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
 nmap f <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)


"""" GENERAL SETTINGS"""
set number  " show line numbers
" spaces instead of tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable backup and swap files 
set nobackup
set nowritebackup
set noswapfile


" History
set history=700
set undolevels=700


" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

"Appearance 
colorscheme molokai
set encoding=utf-8
set guifont=inconsolata\ 10
set cursorline! cursorcolumn!
set guicursor=a:blinkon0

" Turn off mouse when typing
set mousehide

" Save
noremap <F2> :w<CR><Esc>
inoremap <F2> <Esc>:w<CR>a<Esc>
" Save and quit
noremap <F3> :wq<CR><Esc>
inoremap <F3> <Esc>:wq<CR>a


" ===========================================================
" CtriP
" ==========================================================
"
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*.venv/*
set wildignore+=*/coverage/*
set wildignore+=*.testrepository/*
set wildignore+=*.git/*
set wildignore+=*.ropeproject/*
let g:ctrlp_working_path_mode = 2
" Use a leader instead of the actual named binding
nmap <leader>p :CtrlP<cr>
"
" " Easy bindings for its various modes
nmap <F4> :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>"


" =============
" tagbar
" =============
let g:tagbar_sort = 0
map <leader>tb :TagbarToggle<cr>
vmap <leader>tb <esc>:TagbarToggle<cr>
imap <leader>tb <esc>:TagbarToggle<cr>


" =============
" NerdTree
" ============
let Tlist_Use_Right_Window = 1
let NERDTreeQuitOnOpen = 0
let NERDTreeIgnore=['.pyc$[[file]]','.gitignore$[[dir]]']
let g:nerdtree_tabs_open_on_gui_startup = 1
map <F5> :NERDTreeToggle<cr>
vmap <F5> <esc>:NERDTreeToggle<cr>
imap <F5> <esc>:NERDTreeToggle<cr>
map <leader>nt :NERDTreeToggle<cr>
vmap <leader>nt <esc>:NERDTreeToggle<cr>
imap <leader>nt <esc>:NERDTreeToggle<cr>

"==============================
" Syntax checker with Syntastic
" =============================
let g:syntastic_python_checkers = ['pylint']
"
"
"============================
" Javascript Libraries Syntax
" ===========================
let g:used_javascript_libs = 'underscore,angularjs,angularui,angularuirouter,jasmine'

"==========================
" Easy Align
" =========================
xmap ga <Plug>(EasyAlign)


"==========================
" Switch easily between
" split windows
" =========================
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" =======================
" Karma test runner
" =======================
map <Leader>k :call RunCurrentSpecFile()<CR>
" map <Leader>s :call RunNearestSpec()<CR>
" map <Leader>a :call RunAllSpecs()<CR>
"

"======================
" Disable ROPE mode of python mode
let g:pymode_rope = 0

"======================
" To enable JSX support
"======================
let g:jsx_ext_required = 0

"======================
" JavaComplete2
"======================
nmap <F6> <Plug>(JavaComplete-Imports-AddSmart)
imap <F6> <Plug>(JavaComplete-Imports-AddSmart)

"====================================
" Open gradle file with groovy syntax
" ===================================
au BufRead,BufNewFile *.gradle set filetype=groovy

"====================================
" Java autocompletion
" ===================================
set omnifunc=syntaxcomplete#Complete
let g:EclimCompletionMethod = 'omnifunc'


"====================================
" Indent guide
"====================================
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

hi IndentGuidesOdd  ctermbg=white
hi IndentGuidesEven ctermbg=lightgrey
