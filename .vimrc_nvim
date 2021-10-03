set nocompatible              " be iMproved, required
filetype off                  " required

" set rtp+=~/.vim/bundle/YouComplete/Me
" let g:ycm_global_extra_conf = "~/.ycm_extra_global_conf.py"

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomtom/tcomment_vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'simnalamburt/vim-mundo'
call plug#end() 

nnoremap <F5> :MundoToggle<CR>

imap <C-l> <Plug>(coc-snippets-expand)
imap <C-j> <Plug>(coc-snippets-select)

let g:coc_snippet_next = '<c-j>'

let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)



" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()





set laststatus=2
set noshowmode
set wildmenu


let NERDTreeQuitOnOpen=1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-o> :NERDTreeToggle<CR>


set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

set background=dark
set t_Co=256

" syn match pyFunction "\<\k\+\ze("
" hi link pyFunction Function

" All of your Plugins must be added before the following line
filetype plugin indent on    " required

syntax on
set showcmd
let g:airline_left_sep=''
let g:airline_right_sep=''
set linespace=0
" colorscheme atom-dark-256
colorscheme gruvbox
let g:airline_powerline_fonts = 1
let g:airline_theme='violet'
let g:airline#extensions#tabline#enabled = 1           " enable airline tabline                                                           
let g:airline#extensions#tabline#show_close_button = 0 " remove 'X' at the end of the tabline                                            
let g:airline#extensions#tabline#tabs_label = ''       " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown)
let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown)      
let g:airline#extensions#tabline#fnamemod = ':t'       " disable file paths in the tab                                                    
let g:airline#extensions#tabline#show_tab_count = 0    " dont show tab numbers on the right 
let g:airline#extensions#tabline#show_buffers = 0      " dont show buffers in the tabline                                                 
let g:airline#extensions#tabline#tab_min_count = 2     " minimum of 2 tabs needed to display the tabline                                  
let g:airline#extensions#tabline#show_splits = 0       " disables the buffer name that displays on the right of the tabline               
let g:airline#extensions#tabline#show_tab_nr = 0       " disable tab numbers                                                              
let g:airline#extensions#tabline#show_tab_type = 0     " disables the weird ornage arrow on the tabline
set ruler

" let fortran_have_tabs=1
if has('syntax') && (&t_Co > 2)
	syntax  enable
endif

set number
set pastetoggle=<F2>

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

let python_highlight_all = 1 
autocmd BufNewFile,BufRead *.wl set syntax=wl
autocmd BufNewFile,BufRead *.wls set syntax=wl
command! CO TComment
command NTS vertical resize 35

highlight NERDTreeCWD ctermfg=white


map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
let g:matchparen_timeout = 10
let g:matchparen_insert_timeout = 10
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
set colorcolumn=80
set backspace=indent,eol,start

map <C-s> :set scrollbind<CR>
