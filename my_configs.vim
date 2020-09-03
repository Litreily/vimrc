""""""""""""""""""""""""""""""""""
" Create by @litreily
""""""""""""""""""""""""""""""""""


" Set auto change directory
set autochdir

" Set number
set nu

" Set highlight of current line
set cul

" map fuzzy input
cnorea W w
cnorea W! w!
cnorea Wq wq
cnorea WQ wq
cnorea Wa wa
cnorea WA wa
cnorea Q q
cnorea Q! q!
cnorea Qa qa
cnorea QA qa

" Set colorcolumn
set colorcolumn=81

" Set taglist
let g:Tlist_Exit_OnlyWindow = 1

" Set cscope
if has("cscope")
    set csprg=$HOME/bin/cscope " set cscope path
    set csto=1 " search tags file first, then search database of cscope
    set cst " use :cstag instead of default :tag
    set nocsverb
    if filereadable("cscope.out")
        cs add cscope.out
    endif
    set csverb
endif

noremap <leader>cs :cs find s 
noremap <C-\>a :cs find a <C-R>=expand("<cword>")<CR><CR>
noremap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
noremap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
noremap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
noremap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
noremap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
noremap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
noremap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
noremap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
