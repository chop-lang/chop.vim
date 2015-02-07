" Vim syntax file for Chop.

if exists('b:current_syntax')
    finish
endif

" TODO: insert definitions here

syn keyword chKeyword    module uses exports match with cond where when
syn match chKeyword      '\\'

" tentatively named 'binding operators'
syn match chBindingOp    '=>'
syn match chBindingOp    '->'
syn match chBindingOp    ':='

syn match chComment      '#.\{-}$'
syn region chComment     start='#=' end='=#'

syn match chNumber       '\<\-\{-}[0-9]\+\(\.[0-9]*\)\{-}\>'
syn keyword chConst      True False Null

hi def link chKeyword    Statement
hi def link chNumber     Number
hi def link chConst      Constant
hi def link chComment    Comment
hi def link chBindingOp  SpecialChar

let b:current_syntax = 'chop'
