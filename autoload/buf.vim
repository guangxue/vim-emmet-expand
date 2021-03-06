let s:tablnum = 0
let s:stoplnum = 0
let s:jumprange = []

function! buf#stopline()
    return s:stoplnum
endfun

function! buf#setlines(lines, before='', after='', tablnum=0, ft='', mode='')
    let before = a:before
    let after = a:after
    let lines = a:lines
    let tablnum = empty(a:tablnum) ? line('.') : a:tablnum
    let lines = split(lines, '\n')

    if empty(a:mode)
        let lines = split(a:lines, '\n')
        if len(lines) == 1
            let line = before.trim(lines[0]).after
            let s:stoplnum = s:tablnum
            if a:ft == 'css' && line !~ '\${\d:\='
                let line = line . ': ${0};'
            endif
            call setline('.', line)
        else
            let line0 = before.trim(lines[0])
            let eol = lines[-1].after
            let nextlines = lines[1:-2]
            let nextlines = add(nextlines, eol)
            let s:stoplnum = tablnum + len(nextlines)
            call setline('.', line0)
            call append('.', nextlines)
        endif
        let s:jumprange = range(s:tablnum, s:stoplnum)
    endif
    if a:mode == 'v'
        if len(lines) == 1
            let line = trim(lines[0])
            call setline('.', line)
        else
            let line0 = trim(lines[0])
            let eol = lines[-1]
            let nextlines = lines[1:-2]
            let nextlines = add(nextlines, eol)
            call setline('.', line0)
            call append('.', nextlines)
        endif
    endif
endf

" Jump to {pat}
" if pchar equals to {trigger}
" then do {action}, 'hi': highlight, 'del': delete 4chars
function! buf#jumpnext(pat, trigger, action)
    if index(s:jumprange, s:tablnum) < 0 && s:stoplnum > 0
        let s:stoplnum = 0
    endif

    " search lnum and colnum for pattern-> a:pat
    let [lnum, col] = searchpos(a:pat, 'Wz', s:stoplnum)
    if lnum == 0
        let s:stoplnum = 0
    endif
    " move cursor to the matched position
    call cursor(lnum, col)
    " get previous char
    let pchar = getline(lnum)[col-1]

    if pchar == a:trigger
        if a:action == 'hi'
            call cursor(lnum, col+1)
            call feedkeys("\<BS>\<ESC>vf}")
        endif
        if a:action == 'del'
            call cursor(lnum, col)
            call feedkeys("\<BS>")
            silent! normal! 4x
        endif
        if a:action == 'i'
            call cursor(lnum, col)
            call feedkeys("\<ESC>")
            return ''
        endif
    endif 
endf

function! buf#cursor(caret='')
    if a:caret == '$0'
        let lnum = line('.')
        call cursor(lnum, 1)
        let [lnum, col] = searchpos('$0', 'zW', s:stoplnum)
        call cursor(lnum, col)
        call feedkeys("\<Del>\<Del>")
        return ''
    endif
    if a:caret == '${0}'
        let lnum = line('.')
        call cursor(lnum, 1)
        let [lnum, col] = searchpos('\${0}', 'zW')
        silent! %s/\${0}//g
        call cursor(lnum, col)
        return ''
    endif
endf

function! buf#ftdetect()
    let found = findfile("manage.py",".;")
    if found =~ 'manage.py'
        let &ft = 'htmldjango'
    endif
endf
