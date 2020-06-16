"Lsp
function! LspReload()
	lua vim.lsp.stop_client(vim.lsp.get_active_clients())
	edit!
endfunction

command LspReload call LspReload()
command LspDisable lua vim.lsp.stop_client(vim.lsp.get_active_clients())

"Python
lua require'nvim_lsp'.pyls_ms.setup{}
autocmd Filetype python setlocal omnifunc=v:lua.vim.lsp.omnifunc

"Bash
lua require'nvim_lsp'.bashls.setup{}
autocmd Filetype sh setlocal omnifunc=v:lua.vim.lsp.omnifunc

"Vim
lua require'nvim_lsp'.vimls.setup{}
autocmd Filetype vim setlocal omnifunc=v:lua.vim.lsp.omnifunc
