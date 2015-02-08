" Vim syntax file for Chop.

if exists('b:current_syntax')
    finish
endif

syn keyword chKeyword    match with cond where when quote
syn match chKeyword      '\\'

" tentatively named 'binding operators'
syn match chBindingOp    '=>'
syn match chBindingOp    '->'
syn match chBindingOp    ':='

syn match chQuoteOp      +'+

syn match chBinding      '\<[a-zA-Z\-_][a-zA-Z0-9\-_]*[a-zA-Z0-9\-_]\{-}\> *:=' contains=chSymbol,chBindingOp
syn match chSymbol       '\<[a-zA-Z\-_][a-zA-Z0-9\-_]*[a-zA-Z0-9\-_]\{-}\>' contained

syn region chModuleStmt  start='\<module\>' end='\.\_s\@=' contains=chModuleKwd,chBindingOp,chConst
syn keyword chModuleKwd  module uses exports extends contained

syn match chComment      '#.\{-}$'
syn region chComment     start='#=' end='=#'

syn match chNumber       '\<\-\=[0-9]\+\(\.[0-9]*\)\=\>'
syn keyword chConst      True False Null _

syn region chString      start='"' skip='\\"' end='"'
syn region chInfix       start='`' end='`' oneline

hi def link chKeyword    Statement
hi def link chModuleKwd  Statement
hi def link chNumber     Number
hi def link chConst      Constant
hi def link chComment    Comment
hi def link chBindingOp  Special
hi def link chQuoteOp    Special
hi def link chSymbol     Identifier
hi def link chString     String
hi def link chInfix      Function

let b:current_syntax = 'chop'
