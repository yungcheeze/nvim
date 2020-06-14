function! FzfChain(func, ...)
    call call(a:func, a:000)
    if has('nvim')
        call feedkeys('i', 'n')
    endif
endfunction

command! -bang Projects call fzf#run({'source': 'cat ~/.projects', 'sink': function('FzfChain', ['fzf#vim#files'])})

