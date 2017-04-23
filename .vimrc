on
set nocompatible              " be iMproved, required

set background=dark

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/dart-vim-plugin
endif
filetype plugin indent on

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Shougo/vimproc.vim'

"ultisnips + default snippets
Plugin 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<tab><tab>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
Plugin 'honza/vim-snippets'

" Linting
Plugin 'benekastah/neomake'


" Editing files
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-repeat'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'ervandew/supertab'
Plugin 'Quramy/tsuquyomi'
Plugin 'tComment'
Plugin 'Valloric/YouCompleteMe'
Plugin 'wakatime/vim-wakatime'
Plugin 'mustache/vim-mustache-handlebars'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Ctrlp
Plugin 'ctrlp.vim'

" JavaScript.vim
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
autocmd BufNewFile,BufRead *.ts,*.tsx setlocal filetype=typescript

" Clojure
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-salve'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fireplace'
Plugin 'guns/vim-clojure-highlight'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'vim-scripts/paredit.vim'

" autcomplete
Plugin 'Raimondi/delimitMate'

"Syntastic
Plugin 'Syntastic'

" Autosave
Plugin 'vim-auto-save'

"Go
Plugin 'fatih/vim-go'

" UI
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'AnsiEsc.vim'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'roman/golden-ratio'
Plugin 'elmcast/elm-vim'

"--------------------Themes----------------------"
Plugin 'nanotech/jellybeans.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'ap/vim-css-color'
Plugin 'tomasr/molokai'
Plugin 'exitface/synthwave.vim'
Plugin 'tyrannicaltoucan/vim-deep-space'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Add a ruler at 80 characters
augroup BgHighlight
	autocmd!
	autocmd WinEnter * set colorcolumn=80
	autocmd WinLeave * set colorcolumn=0
augroup END

" Save on focus lost
au FocusLost * silent! wa

"-----------Options----------------------------"
filetype on
filetype plugin indent on    " required

" Setting up the theme
" colorscheme molokai
" colorscheme jellybeans
colorscheme synthwave


" colorscheme deep-space
" let g:deepspace_italics=1


" No wrapping please
set nowrap

" Redraw less for vroom vroom
set lazyredraw

" Encoding
set encoding=utf-8

" Linenumbers
set number
set relativenumber

" Better seaching
set hlsearch
set ignorecase
set smartcase

" 2 space tabs
set expandtab
set tabstop=2
set shiftwidth=2

" Splits
set splitright
set splitbelow

" Mouse
set mouse=a
set ttyfast
set t_Co=256

" History
set nowritebackup
set history=10000
set noswapfile
set nobackup

" Use system clipboard
set clipboard=unnamed

" Highlight long lines
set synmaxcol=512

" Watch files
set autoread

" Save on changing buffers
set autowrite

" Display command
set showcmd


"------------plugin configuration--------------"

" Tagbar configuration
let g:tagbar_ctags_bin='/usr/bin/ctags'  " Proper Ctags locations
let g:tagbar_width=26

autocmd! BufRead,BufWritePost * Neomake
let g:neomake_javascript_enabled_makers = ['eslint']

" Syntastic
let g:syntastic_mode_map = { 'mode': 'passive' }
let g:syntastic_javascript_checkers = ['standard']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:elm_syntastic_show_warnings = 1

" Haskell
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

"airline
let g:airline_powerline_fonts = 1

let g:UltiSnipsExpandTrigger="<tab><tab>"
" Enable the list of buffers
" let g:airline#extensions#tabline#enabled = 1

" Show just the filename
" let g:airline#extensions#tabline#fnamemod = ':t'

"vim-auto-save
let g:auto_save = 1  " enable AutoSave
let g:elm_format_autosave = 1
let g:auto_save_in_insert_mode = 0
let g:auto_save_silent = 1  " do not display the auto-save notification

" Indent lines
let g:indentLine_color_term = 000

" typescript configuration
let g:typescript_compiler_options = '-sourcemap'
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" rainbow color
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

"------------Remapping keys---------------------"
" Set leader to space
nmap <space> <leader>
nmap <space><space> <leader><leader>
xmap <space> <leader>

" deactive arrow keys while vim is open
noremap <Up> 	<Nop>
noremap <Down> 	<Nop>
noremap <Left> 	<Nop>
noremap <Right> <Nop>

" kj to exit insert mode and save
inoremap kj <Esc>:w<CR>

" leader - b to add parenthesis an
nmap <leader>l <Up>kS
" Add a semicolon to end of line when pressing ;
nmap ; A;kj
" Add a comma to end of line when pressing ,
nmap , A,kj

" Explore
noremap <leader>n :NERDTreeToggle<CR>

" Tagbar
nmap <leader>t :TagbarToggle<CR>

" close buffer
nmap <leader>x :q<CR>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
