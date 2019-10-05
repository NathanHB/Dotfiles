set nocompatible              " required
filetype plugin on                 " required
set encoding=utf-8
"setup Margin numbers"
set number relativenumber
set nu


"execute local vimrc if found in project folder
set exrc
set secure

"HARDTIME"
let g:hardtime_default_on = 0
let g:hardtime_showmsg = 0


"PATHOGENE"
execute pathogen#infect()


"VUNDLE"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'
Plugin 'jnurmine/Zenburn'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'takac/vim-hardtime'
call vundle#end()            " required


"SNIPPETS"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<C-k>"
let g:UltiSnipsJumpBackwardTrigger="<C-j>"

"COLORSCHEME"
set background=dark
colorscheme solarized


"FOLDING"
filetype plugin indent on    " required
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za



"PYTHON"
"Setup folding and syntax for Python"
let python_highlight_all=1
syntax on
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix


"Highlight BadWhitespaces"
highlight ExtraWhitespace ctermbg=red guibg=darkred


"NERDTREE"
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


"YOUCOMPLETEME"
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py.1"
"let the recommendations trigger automaticaly"
let g:ycm_auto_trigger = 1
"define what I have to type for semantic completion to trigger"
let g:ycm_semantic_triggers =  {
  \   'c': ['re!\w+'],
  \   'objc': ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \            're!\[.*\]\s'],
  \   'ocaml': ['.', '#'],
  \   'cpp,cuda,objcpp': ['->', '.', '::'],
  \   'perl': ['->'],
  \   'php': ['->', '::'],
  \   'cs,d,elixir,go,groovy,java,javascript,julia,perl6,python,scala,typescript,vb': ['.'],
  \   'ruby,rust': ['.', '::'],
  \   'lua': ['.', ':'],
  \   'erlang': [':'],
  \ }
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

"CODE STYLE"
set tabstop=4
set softtabstop=4
set shiftwidth=4
" highlight the column 80th, cool for line length
set colorcolumn=80
highlight colorcolumn ctermbg=darkred


"SYNTASTIC"
let g:syntastic_cs_checkers = ['code_checker']

