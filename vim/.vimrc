" Based on:
" https://github.com/watashi/dotfiles/blob/master/home/watashi/.vimrc
" https://github.com/cctiger36/vimrc/blob/master/.vimrc
"
" BundleInstall in the vim command line.

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'slim-template/vim-slim.git'
Bundle 'tpope/vim-rails'
Bundle 'scrooloose/nerdtree'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle 'hallison/vim-markdown'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-surround'
Bundle 'vim-indent-object'
Bundle 'ervandew/supertab'
Bundle 'corntrace/bufexplorer'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Tagbar'
Bundle 'vim-coffee-script'
Bundle 'vim-stylus'
Bundle 'jade.vim'
Bundle 'bling/vim-airline'
Bundle 'rking/ag.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'Handlebars'

Bundle 'altercation/vim-colors-solarized'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'tomasr/molokai'

syntax enable
filetype plugin indent on

set visualbell t_vb=
source $VIMRUNTIME/vimrc_example.vim

"set fileencodings=ucs-bom,utf-8,gb18030,shift-jis,big5,euc-jp,euc-kr
set fileencoding=utf-8
set fileformats=unix
set fileformat=unix
set nobomb
set number
" set foldmethod=syntax foldcolumn=1
set autoindent tabstop=2 shiftwidth=2 expandtab smarttab
" set ruler ttyfast
set clipboard=unnamed
autocmd FileType c,cpp,java set cindent tabstop=4 shiftwidth=4 cinoptions=:0g0t0(sus
let g:load_doxygen_syntax=1
command Rt 0r  ~/.vim/template/t.cpp | 20
"silent! colorscheme Tomorrow-Night-Eighties
colorscheme hybrid
"let g:hybrid_use_iTerm_colors = 1
"colorscheme hybrid
imap <S-Space> <Space>
if has("gui_running")
  set lines=40 columns=111
  colorscheme hybrid
  "set guioptions-=T
  set nomousehide
  set t_Co=8 t_md=
  set guifont=Menlo:h12
endif

set colorcolumn=81
highlight ColorColumn guibg=black

highlight Tab ctermbg=lightblue guibg=lightblue
call matchadd("Tab", "\t")

highlight WhitespaceEOL ctermbg=red guibg=red
call matchadd("WhitespaceEOL", "\\s\\+$")
autocmd BufEnter *.phpt set ft=php
autocmd BufEnter *.php syntax sync fromstart
autocmd BufEnter *.py set ts=2 sw=2
" au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
autocmd BufEnter *.hsc set ft=haskell
autocmd BufEnter *.hs highlight link hsFunction Identifier

"let mapleader=","
map <C-A> ggVG
map <Leader>d :bd<CR>
map <F1> <ESC>
nmap <silent> <TAB> :wincmd w<CR>
nmap <silent> <S-TAB> :wincmd W<CR>
nnoremap j gj
nnoremap k gk
nnoremap <C-H> ^
nnoremap <C-L> $
nmap <Leader>s :ls<CR>:buffer<Space>
nmap <Space> :BufExplorer<CR>
noremap <CR> :nohlsearch<CR>
noremap <Leader><Leader> <C-^>
noremap <silent> <F2> :NERDTreeToggle<CR>
noremap <silent> <F3> :TagbarToggle<CR>

nmap <Leader>v :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
imap <Leader>v <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
nmap <Leader>c :.w !pbcopy<CR><CR>
vmap <Leader>c :w !pbcopy<CR><CR>

let g:ctrlp_working_path_mode=0
let g:ctrlp_custom_ignore='\.git$\|\.hg$\|\.svn$\|\.rsync_cache$'
let g:EasyMotion_leader_key='<Leader>'
let g:bufExplorerDefaultHelp=0
let g:rails_ctags_arguments='--exclude=.git --exclude=.svn --exclude=.rsync_cache'
let g:airline_left_sep=''
let g:airline_right_sep=''
