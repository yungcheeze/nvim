" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'yungcheeze/vimacs',
    	\ {'do': './install.sh'}

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    Plug 'neovim/nvim-lsp', { 'do': './scripts/docgen.sh' }
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'Shougo/deoplete-lsp'

    Plug 'petobens/poet-v'
call plug#end()

" Vim Options
set number
set autochdir
set nowrap

"Lsp
function LspReload()
	lua vim.lsp.stop_client(vim.lsp.get_active_clients())
	edit!
endfunction

command LspReload call LspReload()

"Python
let g:poetv_auto_activate=1
lua require'nvim_lsp'.pyls_ms.setup{}
autocmd Filetype python setlocal omnifunc=v:lua.vim.lsp.omnifunc


"Autocompletion
let g:deoplete#enable_at_startup = 1
call deoplete#custom#source('_', 'max_menu_width', 80)
