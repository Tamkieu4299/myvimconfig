call plug#begin('~/.vim/plugged')
	Plug 'sheerun/vim-polyglot'
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'
	Plug 'vim-airline/vim-airline'
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'vim-airline/vim-airline-themes'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'tpope/vim-fugitive'
	Plug 'preservim/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tomasiser/vim-code-dark'
call plug#end()

"colorscheme
colorscheme codedark

"NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

"fzf
if has('nvim')
    let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
endif
nnoremap <c-f> :Files<cr>

"airline
let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme='molokai'
nnoremap <C-x> :bnext<CR>
nnoremap <C-z> :bprevious<CR>
nnoremap <C-a> :tabnew<CR>

"coc completion
" COC-VIM TAB SETTINGS START

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

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" SYNTAX
syntax on
filetype on
set encoding=UTF-8
filetype plugin on
filetype plugin indent on
set nu                      " show line number
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab
" Automatically update changed files (but need to focus on the file)
set autoread
set hidden " needed for languageclient
set bg=dark
set softtabstop=4
set bs=2                    " backspace should work as we expect
set history=50              " remember last 50 commands
set ruler                   " show cursor position in bottom line
set hlsearch                " highlight search result
" y and d put stuff into system clipboard (so that other apps can see it)
set clipboard=unnamed,unnamedplus
"set mouse=a                " enable mouse. At least this should work for iTerm
set textwidth=0
" Open new split to right / bottom
set splitbelow
set splitright
set foldlevel=20
" Display related: {{{
set display+=lastline       " Show everything you can in the last line (intead of stupid @@@)

