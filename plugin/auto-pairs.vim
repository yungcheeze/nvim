let g:AutoPairsShortcutToggle = '<M-Space>ta'
let g:AutoPairsShortcutFastWrap = '<C-M-w>'
let g:AutoPairsShortcutJump = '<C-M-n>'
let g:AutoPairsShortcutBackInsert = '<C-M-b>'
let g:AutoPairsMoveCharacter = ''

autocmd Filetype vim let b:AutoPairs = extend({"<": ">"}, g:AutoPairs)
