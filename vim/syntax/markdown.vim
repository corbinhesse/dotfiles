syntax match markdownCheckbox /\[[\ |x]\]/
syntax keyword markdownCheckboxCheck x containedin=markdownCheckbox

syntax match markdownMark /::[a-zA-Z|\ |-]*::/ contains=markdownMarkText
syntax match markdownMarkText /[a-zA-Z]/ contained

hi link markdownCheckbox Gray500
hi link markdownCheckboxCheck Red
hi link markdownMark Gray500
hi link markdownMarkText Red
