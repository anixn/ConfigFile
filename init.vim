"ooooo  oooo ooooo oooo     oooo oooooooooo    oooooooo8
" 888    88   888   8888o   888   888    888 o888     88
"  888  88    888   88 888o8 88   888oooo88  888
"   88888     888   88  888  88   888  88o   888o     oo
"    888     o888o o88o  8  o88o o888o  88o8  888oooo88
" -----------------------------------------------------------------------------
filetype off
syntax enable
set encoding=utf-8
set scrolloff=5

" Set the leader <SPACE>
let mapleader = " "

" Show line number
set number relativenumber

set cursorline
hi CursorLine ctermbg=237

set mouse=a
set autoindent
set tabstop=4 shiftwidth=4 expandtab
set smartcase
setlocal spelllang=en_us

filetype plugin indent on

set clipboard=unnamed
set hidden
set noshowmode
set colorcolumn=80

set expandtab                   " To enter spaces when tab is pressed.
set smarttab                    " To use smart tabs.
set autoindent                  " To copy indentation from current line

set wrap linebreak              " line break and navigations setting
nmap <silent> j gj
nmap <silent> k gk

" Search
set ignorecase                  " To ignore case when searching.
set smartcase                   " When searching try to be smart about cases.
set hlsearch                    " To highlight search results.
set incsearch                   " To make search act like search in modern browsers.
set magic                       " For regular expressions turn magic on.

" I save all the time, those are annoying and unnecessary...
set nobackup
set nowritebackup
set noswapfile

" For windows split in below and right
set splitbelow
set splitright

" Remove all the white space
autocmd BufWritePre * %s/\s\+$//e

"oooooooooo ooooo      ooooo  oooo  ooooooo8 ooooo oooo   oooo
" 888    888 888        888    88 o888    88  888   8888o  88
" 888oooo88  888        888    88 888    oooo 888   88 888o88
" 888        888      o 888    88 888o    88  888   88   8888
"o888o      o888ooooo88  888oo88   888ooo888 o888o o88o    88

call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'tpope/vim-sensible'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/tagbar'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'wincent/loupe'

Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'norcalli/nvim-colorizer.lua'

" For distraction free writing in Vim: Goyo and limelight
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" For smooth scrolling
Plug 'psliwka/vim-smoothie'

"for markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

"For LaTeX plug-ins
Plug 'lervag/vimtex'

"Vim snippets and other string based shortcut
Plug 'honza/vim-snippets'
Plug 'chrisbra/csv.vim'                             " For CSV editing

" For R setup one more try
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
Plug 'gaalcaras/ncm-R'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2'

Plug 'mhinz/vim-startify'
Plug 'karoliskoncevicius/vim-sendtowindow'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Vimwiki and diary
Plug 'vimwiki/vimwiki'
Plug 'mattn/calendar-vim'
call plug#end()

"ooooooooooo ooooo ooooo ooooooooooo oooo     oooo ooooooooooo  oooooooo8
"88  888  88  888   888   888    88   8888o   888   888    88  888
"    888      888ooo888   888ooo8     88 888o8 88   888ooo8     888oooooo
"    888      888   888   888    oo   88  888  88   888    oo          888
"   o888o    o888o o888o o888ooo8888 o88o  8  o88o o888ooo8888 o88oooo888

colorscheme gruvbox
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:girline#extensions#tabline#fnamemode=':p'

" change the theme with a mapping
function! ChangeTheme()
  if g:colors_name == "onedark"
    let g:airline_theme='gruvbox'
    set background=dark
    colorscheme gruvbox
  else
    let g:airline_theme='onedark'
    colorscheme onedark
  endif
endfunction

hi Normal guibg=NONE ctermbg=NONE

"oooo     oooo      o      oooooooooo   oooooooo8
" 8888o   888      888      888    888 888
" 88 888o8 88     8  88     888oooo88   888oooooo
" 88  888  88    8oooo88    888                888
"o88o  8  o88o o88o  o888o o888o       o88oooo888

nmap <leader>ct :call ChangeTheme()<CR>
nmap <leader>ttb :TagbarToggle<CR>

" To run the python
nmap <leader>c <Esc>:w<CR>:!python.exe %<CR>
nmap <leader>xe <Esc>:w<CR>:!xelatex -synctex=1 -interaction=nonstopmode % <CR><CR>:!sumatraPDF %:r.pdf<CR>
nmap <leader>la <Esc>:w<CR>:!pdflatex -synctex=1 -interaction=nonstopmode % <CR><CR>

" Writing mode on with goyo and limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
nnoremap <silent> <leader>wm :Goyo<CR>

set termguicolors

" To run the python
nmap <leader>s <Esc>:w<CR>:source $MYVIMRC<CR>:source $MYVIMRC<CR>
nmap <leader>rc :e $MYVIMRC <CR>
" For buffer switching
nmap <leader><leader> :bn<CR>
nmap <leader>dd :w<CR>:bd<CR>
nmap <leader>dx :bd!<CR>
" Bubble single lines - Always keep an empty line at very end
nmap <A-k> ddkP
nmap <A-j> ddp
" Bubble multiple lines
vmap <A-k> xkP`[V`]
vmap <A-j> xp`[V`]
map <leader>z 1z=

nmap <leader>j yypI<Esc>
nmap <leader>k yyPI<Esc>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize -3<CR>
noremap <silent> <C-Down> :resize +3<CR>
" Change 2 split windows from vertical to horizontal or horizontal to vertical
map <Leader>tv <C-w>t<C-w>H
map <Leader>th <C-w>t<C-w>K

" Start terminals for R and Python sessions '\tr' or '\tp'
map <Leader>tr :new term://bash<CR>iR<CR><C-\><C-n><C-w>k
map <Leader>tp :new term://bash<CR>ipython3<CR><C-\><C-n><C-w>k
tnoremap <Esc> <C-\><C-n>

"For paragraph wrap
vmap Q gq
nmap Q gqap

" Mapping keys
imap jj <Esc>

nmap <silent> <leader>vb :VimwikiAll2HTML<CR>:Vimwiki2HTMLBrowse<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff :FZF<CR>
" oooooooooo   o   ooooooooooo ooooo ooooo  oooooooo8
"  888    888 888  88  888  88  888   888  888
"  888oooo88 8  88     888      888ooo888   888oooooo
"  888      8oooo88    888      888   888          888
" o888o   o88o  o888o o888o    o888o o888o o88oooo888

let $PATH = "c:\\rtools40\\usr\\bin;c:\\rtools40\\mingw64\\bin;" . $PATH
let g:python3_host_prog = "C:\\Python36\\python3.exe"

" Coc settings ----------------------------------------------------------------
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

let g:coc_explorer_global_presets = {
\   '.vim': {
\     'root-uri': '~/.vim',
\   },
\   'cocConfig': {
\      'root-uri': '~/.config/coc',
\   },
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   }
\}

" Coc -Explorer
nmap <leader>e :CocCommand explorer<CR>
nmap <leader>f :CocCommand explorer --preset floating<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

" For coc-bibtex
call coc#config('list.source.bibtex', {
  \  'files': [
  \    'C:/Users/Ankit Deshmukh/Bibliography/References.bib'
  \  ]
  \})

" To convert backslash to forward slash
nnoremap <silent> <Leader>/ :let tmp=@/<Bar>s:\\:/:ge<Bar>let @/=tmp<Bar>noh<CR>


" -----------------------------------------------------------------------------

" ooooo  oooo o88                             o88   oooo        o88
"  888    88  oooo  oo ooo oooo oooo  o  oooo oooo   888  ooooo oooo
"   888  88    888   888 888 888 888 888 888   888   888o888     888
"    88888     888   888 888 888  888888888    888   8888 88o    888
"     888     o888o o888o888o888o  88   88    o888o o888o o888o o888o

