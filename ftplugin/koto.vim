setlocal commentstring=#\ %s
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2

" Break long comment lines, and continue comments on following lines
setlocal formatoptions+=croql
" Don't break other lines
setlocal formatoptions-=t
