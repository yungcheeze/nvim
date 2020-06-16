" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/plugged')

    Plug 'yungcheeze/vimacs',
    	\ {'do': './install.sh'}

    Plug 'tpope/vim-eunuch'

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'godlygeek/tabular'
    Plug 'junegunn/vim-easy-align'

    Plug 'neovim/nvim-lsp', { 'do': './scripts/docgen.sh' }
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'Shougo/deoplete-lsp'

    Plug 'lambdalisue/gina.vim'
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'rbong/vim-flog'
    Plug 'tpope/vim-dispatch'
    Plug 'jreybert/vimagit'

    Plug 'direnv/direnv.vim'

    Plug 'petobens/poet-v'

    Plug 'jaredgorski/spacecamp'

    Plug 'jceb/vim-orgmode'

    Plug 'vim-test/vim-test'
call plug#end()

" Vim Options
set relativenumber
set autochdir
set nowrap
colorscheme spacecamp

" Git
"vim-signify
set updatetime=100

"Autocompletion
let g:deoplete#enable_at_startup = 1
call deoplete#custom#source('_', 'max_menu_width', 80)

inoremap <special> jk <ESC>
inoremap <special> kj <ESC>

" Leaders
let mapleader="\<Space>"
let maplocalleader="\<Space>l"
nmap <M-Space> <leader>
imap <C-c> <C-o><leader>
imap <M-Space> <C-o><leader>

"filetype indents
set expandtab
autocmd Filetype vim setlocal softtabstop=4 shiftwidth=4
autocmd Filetype sh setlocal softtabstop=4 shiftwidth=4
