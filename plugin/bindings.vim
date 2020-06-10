inoremap <special> jk <ESC>

let mapleader="\<Space>"
imap <M-Space> <C-o><leader>

nnoremap <special> <leader>bb :Buffers<CR>
nnoremap <special> <leader>fs :write<CR>
nnoremap <special> <leader>fr :History<CR>
nnoremap <special> <leader>qq :confirm quitall!<CR>
nnoremap <special> <leader>qQ :quitall!<CR>
nnoremap <special> <leader>pf :GitFiles<CR>
nnoremap <special> <leader>th :nohlsearch<CR>
nnoremap <special> <leader>ss :BLines<CR>
nnoremap <special> <leader>ve :source %<CR>
nnoremap <special> <leader><Space> :Commands<CR>
