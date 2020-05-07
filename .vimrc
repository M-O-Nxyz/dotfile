call pathogen#infect()                 

syntax on

set tabstop=4 
set shiftwidth=4
set expandtab

set fenc=utf-8
set number
set showcmd
set cmdheight=1
set wildmenu
set lazyredraw
set showmatch

set laststatus=2



set incsearch
set hlsearch

set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>

inoremap jk <esc>

if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

let g:rainbow_active = 1

filetype indent plugin on     

set hidden
set nobackup
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set confirm
set visualbell
set t_vb=
set mouse=a


set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>


map Y y$
 

nnoremap <C-L> :nohl<CR><C-L>
nnoremap <leader><space> :nohlsearch<CR>