function! reopen_pos#jump_previous()
  " If the position of the previous mark is valid...
  if line("'\"") > 0 && line("'\"") <= line("$")
    " Jump to it.
    normal! g`"
    return 1
  endif
endfunction

autocmd BufReadPost * call reopen_pos#jump_previous()
