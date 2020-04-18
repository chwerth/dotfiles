if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin("~/.vim/plugged")

Plug 'tpope/vim-commentary'
Plug 'leafgarland/typescript-vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Quramy/tsuquyomi'
" Plug 'ajh17/VimCompletesMe'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdtree'
Plug 'dense-analysis/ale'
Plug 'nestorsalceda/vim-strip-trailing-whitespaces'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'derekwyatt/vim-scala'
Plug 'martinda/Jenkinsfile-vim-syntax'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

call plug#end()

colorscheme elflord
set expandtab
set autoindent
set shiftwidth=2
set tabstop=2
set smartindent
set number
set relativenumber
set mouse=a

map <C-o> :NERDTreeToggle<CR>
set tags=./tags,tags;$HOME
set backspace=indent,eol,start
