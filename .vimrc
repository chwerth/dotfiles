if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin("~/.vim/plugged")

Plug 'tpope/vim-commentary'
Plug 'nestorsalceda/vim-strip-trailing-whitespaces'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'scrooloose/nerdtree'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'martinda/Jenkinsfile-vim-syntax'
" Deoplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'zchee/deoplete-jedi'
Plug 'deoplete-plugins/deoplete-tag'
Plug 'deoplete-plugins/deoplete-docker'
Plug 'deoplete-plugins/deoplete-dictionary'

call plug#end()

setlocal dictionary+=/usr/share/dict/words
setlocal dictionary+=/usr/share/dict/american-english
" Remove this if you'd like to use fuzzy search
call deoplete#custom#source(
\ 'dictionary', 'matchers', ['matcher_head'])
" If dictionary is already sorted, no need to sort it again.
call deoplete#custom#source(
\ 'dictionary', 'sorters', [])
" Do not complete too short words
call deoplete#custom#source(
\ 'dictionary', 'min_pattern_length', 4)

" Enable at startup options
let g:deoplete#enable_at_startup = 1

" Colorscheme and miscellaneous options
colorscheme elflord
set expandtab
set autoindent
set shiftwidth=2
set tabstop=2
set smartindent
set number
set relativenumber
set mouse=a
set backspace=indent,eol,start
set tags=./tags,tags;$HOME

" Mapping
map <C-o> :NERDTreeToggle<CR>
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
