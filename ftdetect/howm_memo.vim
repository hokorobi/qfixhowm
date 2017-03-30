if did_filetype()
  finish
endif

autocmd BufRead,BufNewFile *.howm setfiletype howm_memo | set filetype=howm_memo

