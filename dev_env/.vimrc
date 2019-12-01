filetype plugin indent on

set hidden
set completeopt=longest,menuone

let g:racer_experimental_completer = 1
let g:racer_insert_paren = 1

let g:rustfmt_autosave = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set number
set background=dark
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set go-=m
set go-=T
set go-=L
set go-=r
colors gruvbox

let g:ycm_rust_src_path = $RUST_SRC_PATH

set nocompatible

set showcmd

" Set the title of the vim window
set title
set titlestring=%t\ \(%{expand(\"%:p:h:t\")}\)

" Turn on incremental search
set incsearch

" Turn on syntax highlighting
syn on

" Set file encodings correctly
if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=utf-8,latin1
endif


" allow backspacing over everything in insert mode
set bs=2

" always set autoindenting on
set ai

" Remember last position
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif


" keep 100 lines of command line history
set history=100

" show the cursor position all the time
set ruler

imap <D-u> <C-u>
imap <D-d> <C-d>

vmap < <gv
vmap > >gv

"map <C-S-o> :FufCoverageFile<Enter>
"map <C-S-p> :FufLine<Enter>
"map <C-r> :! cargo run<Enter>
nnoremap q <C-w>

"nnoremap <Leader>D :let NERDTreeQuitOnOpen = 0<bar>NERDTreeToggle<CR>
