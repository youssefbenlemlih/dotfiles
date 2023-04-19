call plug#begin('~/.vim/plugged')
Plug 'ap/vim-buftabline'
Plug 'ap/vim-css-color'
Plug 'itchyny/lightline.vim'
Plug 'tomtom/tcomment_vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'gruvbox-community/gruvbox'
Plug 'leafgarland/typescript-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-startify'
Plug 'mogelbrod/vim-jsonpath'
Plug 'chrisbra/csv.vim'
call plug#end()

" theme
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark="hard"
let g:gruvbox_contrast_light="hard"

let g:coc_global_extensions =["coc-tsserver"]

" your magic key ... ;)
let mapleader = " "

" mappings
nmap <F1> <ESC>
nmap <leader>; m'A;<ESC>`' " Add a semicolon
nmap <leader><CR> m'A\\<ESC>`' " Add a return in latex
nmap <leader>= m'gg=G`' " Indent whole file
nmap <leader>S VG:sort u<CR>
nmap <leader>n ]s
nmap <leader>c z=
nmap <leader>a zg
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>af  <Plug>(coc-fix-current)
nmap <leader>bd :bd<CR>
nmap <leader>bn :bn<CR>
nmap <leader>bp :bp<CR>
nmap <leader>evc :e ~/.vimrc<CR>
nmap <leader>f :Files<CR>
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>j ddp
nmap <leader>k ddkP
nmap <leader>r :w<CR>:!go run %<CR>
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>s :%s///g<left><left><left>
nmap <leader>vc :w<CR>:source ~/.vimrc<CR>:echo "Reloaded .vimrc"<CR>
nmap <leader>w :w<CR>
nmap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
nmap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)
nmap Q <Nop>
inoremap jj <ESC>
nmap W I<ESC>l
nmap Y y$

" vim settings
match Error /\t/
set autoindent
set tw=90 "max line length
set autoread ""autoload file from disk
set backspace=indent,eol,start
set backupdir-=.
set backupdir-=~/
set breakindent
set cindent
set conceallevel=2
set cursorline
set diffopt=vertical,filler
set directory-=.
set foldmethod=manual
set formatoptions+=j "join comment lines without #
set formatoptions+=w
set hidden
set history=50 "command line history lenght
set hlsearch
set incsearch"do incremental searching
set laststatus=2
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set mouse=a
set nocompatible
set noerrorbells visualbell t_vb= "disable flashing
set noshowmode
set pumheight=10 "pop up length
set number
set scrolloff=5
set shiftwidth=2
set shortmess+=c "disable completion-menu messages
set showcmd "display incomplete commands
set signcolumn=yes "always show signcolumns
set smarttab
set t_Co=256
set t_ut=
set tabstop=4
set updatetime=300
set wildmenu
set wildmode=longest,list:longest,full "completion
set wrap
syntax on
