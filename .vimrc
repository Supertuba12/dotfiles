syntax on
filetype plugin indent on

" Number of lines vim remembers
set history=500

" When files changes from the outside
set autoread

" Fast saving
nmap <leader>w :w!<cr>
map <space> /
nnoremap <silent> <C-l> :nohl<CR><C-l>
map <C-n> :NERDTreeToggle<CR>
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

set number
set cmdheight=2
set hid
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set showmatch
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set foldcolumn=1
syntax enable
set background=dark
set encoding=utf8
set ffs=unix,dos,mac
set nobackup
set nowb
set noswapfile
" Spaces > tabs
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set lbr
set tw=500
set ai
set si
set wrap
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

" Remove Window ^M 
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

