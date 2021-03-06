call pathogen#infect()
call pathogen#helptags()

colors Tomorrow-Night-Bright

" Prevents entering Ex mode
nnoremap Q <nop>

set mouse=n

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

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
" set backupdir=~/.vim/backup
" set directory=~/.vim/swapfiles

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
let g:ackprg = 'ag --nogroup --nocolor --column'
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-f>'
let g:ctrlp_cmd = 'CtrlPCurWD'
let g:ctrlp_show_hidden = 1

let @d='0VyPf"vi"r*Vyjp'

" Airline status line config (https://github.com/bling/vim-airline)
let g:airline_theme='simple'

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
