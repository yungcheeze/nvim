function! FzfChain(func, line)
    call call(a:func, [a:line])
    if has('nvim')
        call feedkeys('i', 'n')
    endif
endfunction

command! -bang Projects call fzf#run({'source': 'cat ~/.projects', 'sink': function('FzfChain', ['fzf#vim#files'])})

