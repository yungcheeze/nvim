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

    Plug 'neovim/nvim-lsp', { 'do': './scripts/docgen.sh' }
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'Shougo/deoplete-lsp'

    Plug 'lambdalisue/gina.vim'
    Plug 'mhinz/vim-signify'

    Plug 'petobens/poet-v'

    Plug 'jaredgorski/spacecamp'
call plug#end()

" Vim Options
set number
set autochdir
set nowrap
colorscheme spacecamp

" Git
"vim-signify
set updatetime=100

"Python
let g:poetv_auto_activate=1
lua require'nvim_lsp'.pyls_ms.setup{}
autocmd Filetype python setlocal omnifunc=v:lua.vim.lsp.omnifunc


"Autocompletion
let g:deoplete#enable_at_startup = 1
call deoplete#custom#source('_', 'max_menu_width', 80)

inoremap <special> jk <ESC>
inoremap <special> kj <ESC>

" Leaders
let mapleader="\<Space>"
let maplocalleader="\<Space>l"
imap <C-c> <C-o><leader>
imap <M-Space> <C-o><leader>

"--------------------------------------------------------------------------------
"Bindings
" Buffers
nnoremap <special> <leader>bb :Buffers<CR>
nnoremap <special> <leader>bn :bnext<CR>
nnoremap <special> <leader>bp :bprevious<CR>
nnoremap <special> <leader>bd :Bclose<CR>

"Windows
nnoremap <special> <leader>wd :mksession! ~/session.vim<CR>:q!<CR>
nnoremap <special> <leader>wo :mksession! ~/session.vim<CR>:wincmd o<CR>
nnoremap <special> <leader>wu :source ~/session.vim<CR>
nnoremap <special> <leader>ws :split<CR>
nnoremap <special> <leader>wv :vsplit<CR>
nnoremap <special> <leader>wh <C-w>h
nnoremap <special> <leader>wj <C-w>j
nnoremap <special> <leader>wk <C-w>k
nnoremap <special> <leader>wl <C-w>l

"Files
nnoremap <special> <leader>fs :update<CR>
nnoremap <special> <leader>fr :History<CR>
nnoremap <special> <leader>ff :Files<CR>
nnoremap <special> <leader>fd :Confirm Delete<CR>

"Projects
nnoremap <special> <leader>pp :Projects<CR>
nnoremap <special> <leader>pf :GitFiles<CR>

"Quitting
nnoremap <special> <leader>qq :confirm quitall!<CR>
nnoremap <special> <leader>qQ :quitall!<CR>

"Toggles
nnoremap <special> <leader>th :nohlsearch<CR>

" Searching
nnoremap <special> <leader>ss :BLines<CR>

"Vim
nnoremap <special> <leader>ve :source %<CR>
nnoremap <special> <leader><Space> :Commands<CR>
nnoremap <special> <leader><Space> :Commands<CR>

"Lsp
nnoremap <silent> <leader>gd    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <leader>Ld <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <leader>LH     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <leader>gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <leader>Lh <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <leader>1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> <leader>gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> <leader>g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> <leader>gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> <leader>Lr    <cmd>LspReload<CR>

autocmd Filetype python nnoremap <localleader>vr <cmd>PoetvActivate<CR>

"filetype indents
set expandtab
autocmd Filetype vim setlocal softtabstop=4 shiftwidth=4
autocmd Filetype sh setlocal softtabstop=4 shiftwidth=4
