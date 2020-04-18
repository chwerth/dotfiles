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
Plug 'ajh17/VimCompletesMe'

call plug#end()

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
