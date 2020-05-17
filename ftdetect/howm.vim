if did_filetype()
  finish
endif

autocmd BufRead,BufNewFile *.howm setfiletype howm | set filetype=howm

