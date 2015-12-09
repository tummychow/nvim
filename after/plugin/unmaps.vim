" remove sneak's default next/previous
" (i use its s_next option instead)
if maparg(';') == '<Plug>SneakNext'
  unmap ;
endif
if maparg(',') == '<Plug>SneakPrevious'
  unmap ,
endif
