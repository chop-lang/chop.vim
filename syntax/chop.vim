" Vim syntax file for Chop.

if exists('b:current_syntax')
    finish
endif

" TODO: insert definitions here

syn match chComment			'#.\{-}$'
syn region chComment		start='#=' end='=#'

hi def link chComment		Comment

let b:current_syntax = 'chop'
