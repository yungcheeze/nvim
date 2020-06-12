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

    Plug 'lambdalisue/gina.vim'
    Plug 'mhinz/vim-signify'

    Plug 'petobens/poet-v'
call plug#end()

" Vim Options
set number
set autochdir
set nowrap

" Git
"vim-signify
set updatetime=100

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

inoremap <special> jk <ESC>

let mapleader="\<Space>"
let maplocalleader="\<Space>l"
imap <C-c> <C-o><leader>
imap <M-Space> <C-o><leader>

nnoremap <special> <leader>bb :Buffers<CR>
nnoremap <special> <leader>bn :bnext<CR>
nnoremap <special> <leader>bp :bprevious<CR>
nnoremap <special> <leader>bd :bdelete<CR>
nnoremap <special> <leader>wd :q!<CR>
nnoremap <special> <leader>wo :only!<CR>
nnoremap <special> <leader>ws :split<CR>
nnoremap <special> <leader>wv :vsplit<CR>
nnoremap <special> <leader>wh <C-w>h
nnoremap <special> <leader>wj <C-w>j
nnoremap <special> <leader>wk <C-w>k
nnoremap <special> <leader>wl <C-w>l
nnoremap <special> <leader>fs :update<CR>
nnoremap <special> <leader>fr :History<CR>
nnoremap <special> <leader>ff :Files<CR>
nnoremap <special> <leader>fd :call delete(expand('%')) <bar> bdelete!<CR>
nnoremap <special> <leader>qq :confirm quitall!<CR>
nnoremap <special> <leader>qQ :quitall!<CR>
nnoremap <special> <leader>pf :GitFiles<CR>
nnoremap <special> <leader>th :nohlsearch<CR>
nnoremap <special> <leader>ss :BLines<CR>
nnoremap <special> <leader>ve :source %<CR>
nnoremap <special> <leader><Space> :Commands<CR>
nnoremap <special> <leader><Space> :Commands<CR>

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

" tab compeletion for deoplete
"function! s:check_back_space() abort "{{{
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~ '\s'
"endfunction"}}}
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ deoplete#manual_complete()


"filetype indents
set expandtab
autocmd Filetype vim setlocal softtabstop=4 shiftwidth=4
