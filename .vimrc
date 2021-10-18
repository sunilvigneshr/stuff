syntax on
syntax enable
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set ai
set si
set number
set hlsearch
set showmatch
set smartcase
set autoread
set ruler

colorscheme solarized

filetype plugin on
filetype indent on

set nobackup
set nowb
set noswapfile

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'micha/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'

call vundle#end()

let g:ctrlp_use_caching = 0

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ackprg = 'ag --vimgrep'
  let g:ag_working_path_mode="r"
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
nmap K    :Ack "\b<cword>\b" <CR>
nmap <Esc>K   :Ack "\b<cword>\b" <CR>
nnoremap \ :Ack<SPACE>
e

set hlsearch
hi Search ctermbg=LightYellow
hi Search ctermfg=Red

map <C-n> :NERDTreeToggle<CR>
map ,n :NERDTreeFind<CR>
let g:ctrlp_dont_split = 'nerdtree'

autocmd BufNewFile,BufRead *.ts,*.tsx setlocal filetype=typescript
autocmd BufNewFile,BufRead *.thor set syntax=ruby
