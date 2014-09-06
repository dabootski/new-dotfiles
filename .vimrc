call pathogen#infect()
call pathogen#helptags()

colors Tomorrow-Night-Bright

set mouse=n

" Prevent text that I just pasted over from replacing text in default register
"vnoremap p "_dP

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

set backupdir=~/.swapfiles

set t_Co=256
set nocompatible
set number
set ruler
syntax on
set encoding=utf-8  " Set encoding

" Whitespace
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Status bar
set laststatus=2

" NERDTree configuration
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>

" CTags
" map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
" map <C-\> :tnext<CR>

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal g'\"" | endif
endif

function s:setupWrapping()
  set wrap
  set wrapmargin=2
  set textwidth=72
endfunction

function s:setupMarkup()
  call s:setupWrapping()
  map <buffer> <Leader>p :Hammer<CR>
endfunction

" Set up Ruby filetypes
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

au BufRead,BufNewFile *.txt call s:setupWrapping()

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Enable syntastic syntax checking
let g:syntastic_enable_signs=1
"let g:syntastic_quiet_warnings=1

" Use modeline overrides
" NOTE: I don't know what this does...
set modeline
set modelines=10

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/swapfiles

" % to bounce from do to end etc.
runtime! macros/matchit.vim

" Show (partial) command in the status line
set showcmd

"Navigate between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"{ and } were causing me wrist strain...
nnoremap J }
nnoremap K {
vnoremap J }
vnoremap K {

" Window resizing
if bufwinnr(1)
  map + <C-W>+
  map - <C-W>-
endif

syntax enable
set guifont=Monaco:h13

" Searching
map <leader>F :Ack 
let g:ctrlp_map = '<c-f>'
let g:ctrlp_cmd = 'CtrlPCurWD'

" Airline status line config (https://github.com/bling/vim-airline)
let g:airline_theme='simple'

"folding settings (yanked from http://smartic.us/2009/04/06/code-folding-in-vim/)
"set foldmethod=indent   "fold based on indent
"set foldnestmax=10      "deepest fold is 10 levels
"set nofoldenable        "dont fold by default
"set foldlevel=1         "this is just what i use

"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

let @d='0VyPf"vi"r*Vyjp'

" Using Tidy HTML5 instead of standard Tidy HTML
let g:syntastic_html_tidy_exec="/Users/jasonbucki/.vim/bin/tidy-html5/bin/tidy"
let g:syntastic_html_tidy_ignore_errors=[
  \"<ion-",
  \"</ion-",
  \" proprietary attribute \"animation",
  \" proprietary attribute \"ng-",
  \"trimming empty <button>",
  \"trimming empty <i>",
  \"'<' + '/' + letter not allowed here",
  \"plain text isn't allowed in <head> elements"
\]

