function! FzfChain(func, ...)
    call call(a:func, a:000)
    if has('nvim')
        call feedkeys('i', 'n')
    endif
endfunction


function! s:get_git_root()
  let root = split(system('git rev-parse --show-toplevel'), '\n')[0]
  return v:shell_error ? '' : root
endfunction

function! FzfProjectFiles(dir)
    call fzf#run(fzf#wrap({'source': 'rg --files', 'dir' : a:dir , 'sink': 'e'}))
endfunction


command! -bang Projects call fzf#run(fzf#wrap({'source': 'cat ~/.projects', 'sink': function('FzfChain', ['FzfProjectFiles'])}))
command! -bang ProjectFiles call FzfProjectFiles(s:get_git_root())
command! -bang FilesGitignore call fzf#run(fzf#wrap({'source': 'rg --files', 'sink': 'e'}))

