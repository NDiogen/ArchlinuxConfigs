set nocompatible
filetype off

call plug#begin()

Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/ntpeters/vim-better-whitespace.git'

Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'https://github.com/tpope/vim-fugitive.git'

Plug 'https://github.com/easymotion/vim-easymotion.git'

Plug 'https://github.com/jremmen/vim-ripgrep'

"Syntax processing
Plug 'https://github.com/sheerun/vim-polyglot.git'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'https://github.com/rhysd/vim-clang-format'

"Thermes
Plug 'https://github.com/hewo/vim-colorscheme-deepsea.git'
Plug 'https://github.com/rakr/vim-one.git'

call plug#end()

set shellslash

set hidden
set exrc
filetype plugin indent on
syntax on

set number
set expandtab
set tabstop=4
set shiftwidth=4

"Therme
set termguicolors
colorscheme one
set background=dark
set t_Co =255

"Highlight the column
set colorcolumn=80

"VimAirline config
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod=':t'

let g:rg_highlight=1

"Vim Extra WhiteSpaces
highlight ExtraWhitespace ctermbg=LightRed guibg=LightRed

"VimGutter
set signcolumn=yes

"Polyglot
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1

" COC
set updatetime=300
set shortmess+=c
set cmdheight=2

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
autocmd CursorHold * silent call CocActionAsync('highlight')

vmap <leader>f   <Plug>(coc-format-selected)
nmap <leader>f   <Plug>(coc-format-selected)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <silent> sg :CocList grep <CR>
nmap <silent> ss :CocList symbols <CR>
nmap <silent> sb :CocList buffers <CR>
nmap <silent> sf :CocList files <CR>

map <silent>  S :CocListResume <CR>


nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

vmap <leader>f  <Plug>(coc-format-selected)

"EasyMotion hotkeys
map <A-l> <Plug>(easymotion-overwin-line)
map <A-j> <Plug>(easymotion-j)
map <A-k> <Plug>(easymotion-k)
map <A-w> <Plug>(easymotion-w)
map <A-e> <Plug>(easymotion-e)
map <A-b> <Plug>(easymotion-b)
map <A-f> <Plug>(easymotion-f)
map <A-F> <Plug>(easymotion-F)
"NERDTree hotkeys
nmap <C-n> :NERDTreeToggle<CR>
"
"Buffer hotkeys
nmap <C-h> :bp<CR>
nmap <C-l> :bn<CR>
nmap <C-u> :bd<CR>
