if exists('b:current_syntax')
  finish
endif

let s:cpo_orig=&cpo
set cpo&vim

let b:current_syntax = 'howm'

syntax region howmTitle start="^=" end="$" keepend contains=howmTitleBullet,howmTitleCategory
syntax match howmTitleBullet contained '^=\{1,6}'
syntax match howmTitleCategory contained '\[.\{-}\]'

syntax match howmDateTime '\s*\[\d\{4}[-/]\d\{2}[-/]\d\{2}\( \d\{2}\(:\d\{2}\)\{1,2}\)\?\]' contains=howmDate,howmTime
syntax match howmDate contained '\d\{4}[-/]\d\{2}[-/]\d\{2}'
syntax match howmTime contained '\d\{2}\(:\d\{2}\)\{1,2}'

syntax match howmListBullet '^\s*-\s'


highlight default link howmTitle         Title
highlight default link howmTitleBullet   Special
highlight default link howmTitleCategory Identifier

highlight default link howmDate Underlined
highlight default link howmTime Constant

highlight default link howmListBullet Label

let &cpo=s:cpo_orig
unlet s:cpo_orig

