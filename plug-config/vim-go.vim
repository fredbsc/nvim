let g:go_fmt_command = "goimports"
let g:go_textobj_enabled = 1

set autowrite

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#cmd#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

augroup go
  autocmd!

  autocmd FileType go nmap <silent> <Leader>xv <Plug>(go-def-vertical)
  autocmd FileType go nmap <silent> <Leader>xs <Plug>(go-def-split)
  autocmd FileType go nmap <silent> <Leader>xi <Plug>(go-info)
  autocmd FileType go nmap <silent> <Leader>xl <Plug>(go-metalinter)
  autocmd FileType go nmap <silent> <leader>xb :<C-u>call <SID>build_go_files()<CR>
  autocmd FileType go nmap <silent> <leader>xt  <Plug>(go-test)
  autocmd FileType go nmap <silent> <leader>xr  <Plug>(go-run)
  autocmd FileType go nmap <silent> <leader>xe  <Plug>(go-install)
  autocmd FileType go nmap <silent> <leader>xf  <Plug>(go-decls)
  autocmd FileType go nmap <silent> <leader>xF  <Plug>(go-decls-dir)
  autocmd FileType go nmap <silent> <Leader>xd <Plug>(go-doc)
  autocmd FileType go nmap <silent> <Leader>xD <Plug>(go-doc-browser)
  autocmd FileType go nmap <silent> <Leader>xc <Plug>(go-coverage-toggle)
  " I like these more!
  autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
  autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
  autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
  autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
augroup END
