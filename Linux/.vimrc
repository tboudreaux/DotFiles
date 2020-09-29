set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'chrisbra/csv.vim'

Plugin 'reedes/vim-pencil'

Plugin 'itchyny/lightline.vim'

Plugin 'junegunn/goyo.vim'

Plugin 'terryma/vim-multiple-cursors'

Plugin 'rking/ag.vim'

set laststatus=2
set noshowmode


Plugin 'scrooloose/nerdtree'
let NERDTreeQuitOnOpen=1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-o> :NERDTreeToggle<CR>

Plugin 'tomtom/tcomment_vim'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'airblade/vim-gitgutter'

Plugin 'junegunn/fzf'

Plugin 'wincent/command-t'

Plugin 'rudrab/vimf90'

set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

set background=dark
set t_Co=256

syn match pyFunction "\<\k\+\ze("
hi link pyFunction Function

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on

" colorscheme atom-dark-256
colorscheme brogrammer
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
" command NTS NerdTreeSize
"
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
