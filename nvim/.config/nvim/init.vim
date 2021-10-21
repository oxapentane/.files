if has('nvim')
	call plug#begin(stdpath('data') . '/plugged')
	" insert images into markdown automagically
	Plug 'ferrine/md-img-paste.vim'

	"Better syntax
	Plug 'rust-lang/rust.vim'
	Plug 'LnL7/vim-nix'
	Plug 'cespare/vim-toml'
	Plug 'JuliaEditorSupport/julia-vim'
	Plug 'lervag/vimtex'
	Plug 'airblade/vim-gitgutter'
	Plug 'vim-pandoc/vim-pandoc'
	Plug 'vim-pandoc/vim-pandoc-syntax'
	Plug 'vim-pandoc/vim-rmarkdown'

	" LSP
	Plug 'neovim/nvim-lspconfig'

	" Colors
	Plug 'jeffkreeftmeijer/vim-dim'

	call plug#end()

	" Incrementally show effects of :s, :smagic, :snomagic
	set icm=split
	" insert images into markdown automagically
	autocmd FileType markdown nmap <buffer><silent> <localleader>p :call mdip#MarkdownClipboardImage()<CR>
	let g:mdip_imgdir = 'static'
	let g:mdip_imgname = 'image'
else
	set nocompatible
	filetype plugin indent on
	syntax enable
endif

colorscheme dim

set number

" space is our leader!
let mapleader = "\<Space>"
let maplocalleader = "\\"

set nobackup
set noswapfile
set guicursor=

" autosmartident
set ai
set si
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab

" arrows for visual line identation
imap <up> <C-O>gk
imap <down> <C-O>gj
nmap <up> gk
nmap <down> gj
vmap <up> gk
vmap <down> gj

set history=999
set undolevels=999

" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy
" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

set updatetime=107

" markdown
let g:markdown_syntax_conceal = 0
let g:markdown_fenced_languages = ['c', 'html', 'python', 'scheme', 'yaml', 'sh']

" disable modelines
set nomodeline

" change tab completion to more bash-like
set wildmode=longest:full,list:full

" U is quite useless
nnoremap U :echo "NOPE!"<CR>

" do not conceal stuff
set conceallevel=0
" and another time for supid ones who continue to insist
let g:pandoc#syntax#conceal#use = 0
let g:tex_conceal = ''
