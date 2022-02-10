syntax match markdownCheckbox /\[[\ |x]\]/
syntax keyword markdownCheckboxCheck x containedin=markdownCheckbox

syntax match markdownMark /::[a-zA-Z0-9|\ |-|_|&]*::/ contains=markdownMarkText
syntax match markdownMarkText /[a-zA-Z0-9]/ contained

syntax region markdownCodeBlock start="^\n\( \{8,}\|\t\)" end="^\ze \{,8}\S.*$" keepend
syntax cluster markdownBlock contains=markdownH1,markdownH2,markdownH3,markdownH4,markdownH5,markdownH6,markdownBlockquote,markdownListMarker,markdownOrderedListMarker,markdownRule
syntax match markdownListMarker "\%(\t\| \{0,8\}\)[-*+]\%(\s\+\S\)\@=" contained
syntax match markdownOrderedListMarker "\%(\t\| \{0,8}\)\<\d\+\.\%(\s\+\S\)\@=" contained

hi link markdownCheckbox Gray500
hi link markdownCheckboxCheck Red
hi link markdownMark Gray500
hi link markdownMarkText Red
