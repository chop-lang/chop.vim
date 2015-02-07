" Vim syntax file for Chop.

if exists('b:current_syntax')
    finish
endif

" TODO: insert definitions here

syn keyword chKeyword    module uses exports match with cond where when
syn match chKeyword      '\\'
syn match chKeyword      '=>'
syn match chKeyword      '->'
syn match chKeyword      ':='

syn match chComment      '#.\{-}$'
syn region chComment     start='#=' end='=#'

syn match chNumber       '\<0\>'
syn match chNumber       '\<-\{-}[1-9]\d*\>'
syn match chNumber       '\<-\{-}\d\+\.\d\+\>'
syn keyword chConst      True False Null

hi def link chKeyword    Statement
hi def link chNumber     Number
hi def link chConst      Constant
hi def link chComment    Comment

let b:current_syntax = 'chop'
