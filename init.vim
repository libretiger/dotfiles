set noerrorbells  "no sounds
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set number    
set nowrap "line continues forever
set smartcase  "case sensetive searching
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set nocompatible
set laststatus=2
set relativenumber
set smartindent

set colorcolumn=150

filetype indent plugin on
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set mouse=a

syntax on
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()


Plugin 'VundleVim/Vundle.vim'
"Plugin 'itchyny/lightline.vim'
Plugin 'morhetz/gruvbox'
Plugin 'preservim/nerdtree'
Plugin 'Yggdroot/indentLine'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'neoclide/coc.nvim'
"Plugin 'AutoComplPop'
"Plugin 'shougo/deoplete.nvim'
"Plugin 'kiteco/vim-plugin'
Plugin 'mattn/emmet-vim'
Plugin 'KeitaNakamura/neodark.vim'
"airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}

call vundle#end()


filetype plugin indent on

"autoclose brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"backspace by word and by letter"
inoremap <C-b>  <Esc>xa

"theme for powerline
let g:airline_theme = 'gruvbox'

set guifont=DroidSansMono\ Nerd\ Font\ 12

"triangular borders for airline
let g:airline_left_sep = "\uE0B0"
let g:airline_right_sep = "\uE0B2"



""colorscheme neodark
colorscheme gruvbox

""let g:neodark#use_256color = 1 " default: 0
""let g:neodark#background = '#202020'


set background=dark
"hi Normal guibg=NONE ctermbg=black
""autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

nnoremap j n
nnoremap J N

"inoremap ii <Esc>
"vnoremap ii <Esc>

nnoremap t j
vnoremap t j

nnoremap n k
vnoremap n k

nnoremap s l
vnoremap s l


"copy and paste
vnoremap <C-c> "+y
map <C-p> "+P


set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

"powerline lines
" Always show statusline
 set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256
" colours)
set t_Co=256

  
let mapleader=" "
"set timeoutlen=150


"save file
noremap <leader>s   :w<CR>        
vnoremap <leader>s   :w<CR>       

"nerdtree mappings
let NERDTreeMapOpenInTab='<C-t>'

noremap <leader>n   :NERDTree<cr>
vnoremap <leader>n   :NERDTree<cr>


"emmet maps
let g:user_emmet_mode='n'   "only enable in normal mode
let g:user_emmet_leader_key=','


"window switching
noremap <leader>w  <C-w><C-w> 

"move a block of text
vnoremap T  :m '>+1<CR>gv=gv
vnoremap N  :m '<-2<CR>gv=gv

"run a bash command
nnoremap <leader>t  :terminal<CR>
"
"terminal remappings
tnoremap <Esc>  <C-\><C-n>


















""COC remappings
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

