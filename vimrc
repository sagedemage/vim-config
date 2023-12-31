call plug#begin()

" Vim Markdown
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()

" set the map leader to space
let mapleader = "\<Space>"

" 4 spaces for Tabs
set tabstop=4

" Syntax higlighiting
filetype plugin on
syntax on

" Enable line numbers
set number

" Open File Explorer
nnoremap <leader>e :Explore<CR>

" Vim Markdown configuration
" - Disable folding
let g:vim_markdown_folding_disabled = 1

" - enable conceal
set conceallevel=2

" - ge command to follow named anchors in 
" - links of the form file#anchor or just #anchor
let g:vim_markdown_follow_anchor = 1

" Clipboard register switcher
" - Switch to clipboard register 
nnoremap <leader>c :set clipboard=unnamedplus<CR>

" - Switch to unamed register
nnoremap <leader>u :set clipboard=""<CR>

if has("gui_running")
" If GVim is Running
	" Vim color scheme
	colorscheme sorbet

	" Set GVim font
	set guifont=Monospace\ Regular\ 14
endif

