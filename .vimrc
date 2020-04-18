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
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'pechorin/any-jump.vim'
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'drewtempelmeyer/palenight.vim'
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

" Enable deoplete
let g:deoplete#enable_at_startup = 1

" Give deoplete the dictionary
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

" Any Jump Settings
let g:any_jump_list_numbers = 1
let g:any_jump_references_enabled = 1
let g:any_jump_grouping_enabled = 1
let g:any_jump_preview_lines_count = 5
let g:any_jump_max_search_results = 20
let g:any_jump_search_prefered_engine = 'ag'
let g:any_jump_results_ui_style = 'filename_first'
let g:any_jump_ignored_files = ['*.tmp', '*.temp']

" Colorscheme settings
set background=dark
colorscheme palenight
let g:airline_theme = "palenight"
let g:palenight_terminal_italics=1
if (has("termguicolors"))
  set termguicolors
endif

" Formatting Settings
set expandtab
set autoindent
set shiftwidth=2
set tabstop=2
set smartindent

" Line Numbers
set number
set relativenumber
set mouse=a
set backspace=indent,eol,start
set tags=./tags,tags;$HOME

" Mapping
map <C-o> :NERDTreeToggle<CR>
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
