"Escaping insert mode
inoremap jk <ESC>
inoremap kj <ESC>

" Leaders
let mapleader="\<Space>"
let maplocalleader="\<Space>l"
nmap <M-Space> <leader>
imap <C-c> <C-o><leader>
imap <M-Space> <C-o><leader>
vmap <M-Space> <leader>

" Buffers
nnoremap <leader>bb :Buffers<CR>
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bd :Bclose<CR>

"Files
nnoremap <leader>fs :update<CR>
nnoremap <leader>fr :History<CR>
nnoremap <leader>ff :FilesGitignore<CR>
nnoremap <leader>fF :Files<CR>
nnoremap <leader>fd :Confirm Delete<CR>

"Git
nnoremap <leader>gS :Gina add execute "echo expand('%:p')"<CR>
nnoremap <leader>gs :Magit<CR>
nnoremap <leader>gc :Gina commit<CR>
nnoremap <leader>gl :Flog<CR>

"Lsp
nnoremap <silent> <leader>gd  <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <leader>Ld  <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <leader>LH  <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <leader>gD  <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <leader>Lh  <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <leader>1gD <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> <leader>gr  <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> <leader>g0  <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> <leader>gW  <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> <leader>Lr  <cmd>LspReload<CR>

"Projects
nnoremap <leader>pp :Projects<CR>
nnoremap <leader>pf :ProjectFiles<CR>

"Quitting
nnoremap <leader>qq :confirm quitall!<CR>
nnoremap <leader>qQ :quitall!<CR>

" Searching
nnoremap <leader>ss :BLines<CR>

"Toggles
nnoremap <leader>th :nohlsearch<CR>

"Vim
nnoremap <leader>ve      :source %<CR>
nnoremap <leader><Space> :Commands<CR>
nnoremap <leader><Space> :Commands<CR>

"Windows
nnoremap <leader>wq :q<CR>
nnoremap <leader>wd :mksession! ~/session.vim<CR>:q!<CR>
nnoremap <leader>wo :mksession! ~/session.vim<CR>:wincmd o<CR>
nnoremap <leader>wu :source ~/session.vim<CR>
nnoremap <leader>ws :split<CR>
nnoremap <leader>wv :vsplit<CR>
nnoremap <leader>w/ :vsplit<CR>
nnoremap <leader>wh <C-w>h
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>wl <C-w>l

autocmd Filetype python nnoremap <localleader>vr <cmd>PoetvActivate<CR>

