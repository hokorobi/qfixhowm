if exists("b:current_syntax")
  finish
endif

let s:cpo_orig=&cpo
set cpo&vim

let b:current_syntax = "howm_memo"

syntax region howmmemoTitle start="^=" end="$" keepend contains=howmmemoTitleBullet,howmmemoTitleCategory
syntax match howmmemoTitleBullet contained '^=\{1,6}'
syntax match howmmemoTitleCategory contained '\[.\{-}\]'

syntax match howmmemoDateTime '\s*\[\d\{4}[-/]\d\{2}[-/]\d\{2}\( \d\{2}\(:\d\{2}\)\{1,2}\)\?\]' contains=howmmemoDate,howmmemoTime
syntax match howmmemoDate contained '\d\{4}[-/]\d\{2}[-/]\d\{2}'
syntax match howmmemoTime contained '\d\{2}\(:\d\{2}\)\{1,2}'

syntax match howmmemoListBullet '^\s*-\s'


highlight default link howmmemoTitle         Title
highlight default link howmmemoTitleBullet   Special
highlight default link howmmemoTitleCategory Identifier

highlight default link howmmemoDate Underlined
highlight default link howmmemoTime Constant

highlight default link howmmemoListBullet Label

let &cpo=s:cpo_orig
unlet s:cpo_orig

