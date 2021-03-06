"====================================================================================
" vim-emmet-expand : An emmet-like plugin for vim, comes with auto pairs, snippet
"                  : expand, triggered by `Tab`.
" Last Change      : 01 Dec 2020
" Maintainer       : guangxue <contact.guangxue@gmail.com>
" Version          : v0.1
" License          : MIT
"====================================================================================
    
let s:save_cpo = &cpoptions
set cpoptions&vim

if !exists('g:expand_vimscript')
    let g:expand_vimscript = 0
endif

call map#pairs(['()', '{}', '[]', '""', "''", '``'], 'default')
call map#ifunc({
\   'append':'append#brackets',
\   'close':'close#brackets',
\   '<CR>':'cr#Enter',
\   '<BS>':'bs#Backspace',
\   '<Space>':'sp#Space',
\   '<C-b>/': 'wrap#comment',
\   'feature':{',':'move#inside()', '>':'complete#items#htmltags()', '*':'append#comments()'}
\})
call map#vfunc({'<Tab>': 'wrap#abbr'})
call map#nfunc({'<C-b>': 'wrap#comment'})
call map#exe()

set completeopt=menuone,noinsert,popup
set mouse=i
set completepopup=border:off,width:60,height:15
augroup completemenu
    autocmd!
    autocmd TextChangedI *.css call complete#css#main#func()
    autocmd TextChangedI *.html,*.htmldjango call complete#html#main#func()
    autocmd TextChangedI *.py call complete#django#main#func()
    autocmd BufWritePost *.py call django#views#parse#saved()
    autocmd completeDone *.* call complete#items#done()
augroup END

nnoremap <C-x> :q!<Enter>
nnoremap <C-s><C-x> :wq<Enter>
nnoremap <C-s> :w<Enter>

let &cpoptions = s:save_cpo
unlet s:save_cpo

