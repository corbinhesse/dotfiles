if exists('b:current_syntax')
	finish
endif

syn match arcPragma "^@\w*" display
syn match arcComment "^\s*[;#].*$" display

hi def link arcPragma Blue
hi def link arcComment Comment

let b:current_syntax = 'arc'
