inoremap <special> jk <ESC>

let mapleader="\<Space>"
imap <C-c> <C-o><leader>
imap <M-Space> <C-o><leader>

nnoremap <special> <leader>bb :Buffers<CR>
nnoremap <special> <leader>fs :update<CR>
nnoremap <special> <leader>fr :History<CR>
nnoremap <special> <leader>ff :Files<CR>
nnoremap <special> <leader>qq :confirm quitall!<CR>
nnoremap <special> <leader>qQ :quitall!<CR>
nnoremap <special> <leader>pf :GitFiles<CR>
nnoremap <special> <leader>th :nohlsearch<CR>
nnoremap <special> <leader>ss :BLines<CR>
nnoremap <special> <leader>ve :source %<CR>
nnoremap <special> <leader><Space> :Commands<CR>
nnoremap <special> <leader><Space> :Commands<CR>

nnoremap <silent> <leader>gd    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <leader>ld <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <leader>lH     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <leader>gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <leader>lh <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <leader>1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> <leader>gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> <leader>g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> <leader>gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> <leader>lr    <cmd>call LspReload()<CR>

" tab compeletion for deoplete
"function! s:check_back_space() abort "{{{
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~ '\s'
"endfunction"}}}
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ deoplete#manual_complete()
