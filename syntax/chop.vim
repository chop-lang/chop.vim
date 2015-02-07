" Vim syntax file for Chop.

if exists('b:current_syntax')
    finish
endif

" TODO: insert definitions here

syn match chComment      '#.\{-}$'
syn region chComment     start='#=' end='=#'

syn match chNumber       '\<0\>'
syn match chNumber       '\<-\{-}[1-9]\d*\>'
syn match chNumber       '\<-\{-}\d\+\.\d\+\>'

hi def link chNumber     Number
hi def link chComment    Comment

let b:current_syntax = 'chop'
