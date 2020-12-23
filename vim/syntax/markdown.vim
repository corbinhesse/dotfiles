syntax match markdownCheckbox /\[[\ |x]\]/
syntax keyword markdownCheckboxCheck x containedin=markdownCheckbox

hi link markdownCheckbox Gray500
hi link markdownCheckboxCheck Red
