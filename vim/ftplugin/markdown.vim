setlocal nonumber norelativenumber
setlocal wrap
setlocal expandtab
let g:markdown_fenced_languages = ['bash=sh', 'javascript', 'js=javascript', 'jsx', 'json=json', 'typescript', 'ts=typescript', 'php', 'html', 'css', 'rust', 'sql', 'graphql']

" NOTE: Find the character by command: `:echo char2nr("-")`

" Markdown Mark `::marktext::`
let g:surround_58 = "::\r::"

" Add double for `*`
let g:surround_42 = "**\r**"
