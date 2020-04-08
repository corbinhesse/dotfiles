" Vim Color File
" Name: material.vim
" Maintainer: Corbin Hesse

" === Configuration ===

highlight clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'material'

" === Functions ===

function! s:SetHighlight(group, fg, bg, attr)
  let l:attr = a:attr
  if empty(l:attr)
    let l:attr = 'none'
  endif
  if !empty(a:fg)
    exec 'hi ' . a:group . ' guifg=' . a:fg
  endif
  if !empty(a:bg)
    exec 'hi ' . a:group . ' guibg=' . a:bg
  endif
  if !empty(l:attr)
    exec 'hi ' . a:group . ' gui=' . l:attr . ' cterm=' . l:attr
  endif
endfun

" === Color Definitions ===

" Default colors
set background=dark
let s:bg = '#1C2529'
let s:fg = '#ECEFF1'
let s:white = '#ffffff'
let s:black = '#000000'
let s:caret = '#FFC400' "Amber A400

let s:gray100 = '#CFD8DC'
let s:gray200 = '#B0BEC5'
let s:gray300 = '#90A4AE'
let s:gray400 = '#78909C'
let s:gray500 = '#607D8B'
let s:gray600 = '#546E7A'
let s:gray700 = '#455A64'
let s:gray800 = '#37474F'
let s:gray900 = '#263238'
let s:gray1000 = '#12181B' "50% of s:gray900 and s:bg
let s:gray1100 = '#0D1114'

let s:red = '#FF5252' "Red A200
let s:pink = '#FF80AB' "Pink A100
let s:purple = '#CE93D8' "Purple 200
let s:violet = '#B39DDB' "Deep Purple 200
let s:orange = '#FF8A65' "Deep Orange 300
let s:yellow = '#FFD54F' "Amber 300
let s:green = '#AED581' "Light Green 300
let s:blue = '#64B5F6' "Blue 300
let s:cyan = '#80DEEA' "Cyan 200
let s:teal = '#4DB6AC' "Teal 300
let s:brown = '#8D6E63' "Brown 400

let s:red_diff = '#543033' "25%
let s:yellow_diff = '#32362C' "15%
let s:yellow_diff_text = '#545032' "25%
let s:green_diff = '#40503E' "25%

" Defined globally for Lightlight
let g:material_colorscheme_map = {}
let g:material_colorscheme_map.bg = s:bg
let g:material_colorscheme_map.fg = s:fg
let g:material_colorscheme_map.caret = s:caret
let g:material_colorscheme_map.white = s:white
let g:material_colorscheme_map.black = s:black
let g:material_colorscheme_map.gray100 = s:gray100
let g:material_colorscheme_map.gray200 = s:gray200
let g:material_colorscheme_map.gray300 = s:gray300
let g:material_colorscheme_map.gray400 = s:gray400
let g:material_colorscheme_map.gray500 = s:gray500
let g:material_colorscheme_map.gray600 = s:gray600
let g:material_colorscheme_map.gray700 = s:gray700
let g:material_colorscheme_map.gray800 = s:gray800
let g:material_colorscheme_map.gray900 = s:gray900
let g:material_colorscheme_map.gray1000 = s:gray1000
let g:material_colorscheme_map.red = s:red
let g:material_colorscheme_map.pink = s:pink
let g:material_colorscheme_map.purple = s:purple
let g:material_colorscheme_map.violet = s:violet
let g:material_colorscheme_map.orange = s:orange
let g:material_colorscheme_map.yellow = s:yellow
let g:material_colorscheme_map.green = s:green
let g:material_colorscheme_map.blue = s:blue
let g:material_colorscheme_map.cyan = s:cyan
let g:material_colorscheme_map.teal = s:teal
let g:material_colorscheme_map.brown = s:brown
let g:material_colorscheme_map.red_diff = s:red_diff
let g:material_colorscheme_map.yellow_diff = s:yellow_diff
let g:material_colorscheme_map.yellow_diff_text = s:yellow_diff_text
let g:material_colorscheme_map.green_diff = s:green_diff

" === Highlights ===

" Colors
call s:SetHighlight('Red', s:red, '', '')
call s:SetHighlight('Pink', s:pink, '', '')
call s:SetHighlight('Purple', s:purple, '', '')
call s:SetHighlight('Violet', s:violet, '', '')
call s:SetHighlight('Orange', s:orange, '', '')
call s:SetHighlight('Yellow', s:yellow, '', '')
call s:SetHighlight('Green', s:green, '', '')
call s:SetHighlight('Blue', s:blue, '', '')
call s:SetHighlight('Cyan', s:cyan, '', '')
call s:SetHighlight('Teal', s:teal, '', '')
call s:SetHighlight('Brown', s:brown, '', '')

call s:SetHighlight('Gray100', s:gray100, '', '')
call s:SetHighlight('Gray200', s:gray200, '', '')
call s:SetHighlight('Gray300', s:gray300, '', '')
call s:SetHighlight('Gray400', s:gray400, '', '')
call s:SetHighlight('Gray500', s:gray500, '', '')
call s:SetHighlight('Gray600', s:gray600, '', '')
call s:SetHighlight('Gray700', s:gray700, '', '')
call s:SetHighlight('Gray800', s:gray800, '', '')
call s:SetHighlight('Gray900', s:gray900, '', '')
call s:SetHighlight('Gray1000', s:gray1000, '', '')
call s:SetHighlight('Gray1100', s:gray1100, '', '')

" Vim Editor
call s:SetHighlight('ColorColumn', s:red, 'none', '')
call s:SetHighlight('Cursor', s:bg, s:caret, '')
call s:SetHighlight('CursorColumn', '', s:gray1000, '')
call s:SetHighlight('CursorLine', '', s:gray1000, '')
call s:SetHighlight('CursorLineNr', s:gray500, '', '')
call s:SetHighlight('Directory', s:blue, '', '')
call s:SetHighlight('DiffAdd', '', s:green_diff, '')
call s:SetHighlight('DiffDelete', 'none', s:red_diff, '')
call s:SetHighlight('DiffChange', '', s:yellow_diff, '')
call s:SetHighlight('DiffText', '', s:yellow_diff_text, '')
call s:SetHighlight('EndOfBuffer', s:gray800, '', '')
call s:SetHighlight('ErrorMsg', s:red, s:red_diff, 'bold')
call s:SetHighlight('FoldColumn', s:brown, s:bg, '')
call s:SetHighlight('Folded', s:brown, s:bg, 'italic')
call s:SetHighlight('LineNr', s:gray700, '', '')
call s:SetHighlight('MatchParen', '', s:gray800, 'bold')
call s:SetHighlight('ModeMsg', s:green, '', '')
call s:SetHighlight('MoreMsg', s:green, '', '')
call s:SetHighlight('NonText', s:gray700, '', '')
call s:SetHighlight('Normal', s:fg, 'none', '')
call s:SetHighlight('NormalFloat', s:fg, s:black, '')
call s:SetHighlight('Pmenu', s:gray100, s:black, '')
call s:SetHighlight('PmenuSel', s:cyan, s:gray1000, '')
call s:SetHighlight('PmenuSbar', '', s:black, '')
call s:SetHighlight('PmenuThumb', '', s:gray1000, '')
call s:SetHighlight('Question', s:blue, '', '')
call s:SetHighlight('IncSearch', s:bg, s:caret, 'bold')
call s:SetHighlight('Search', 'none', s:gray800, 'none')
call s:SetHighlight('SignColumn', s:fg, s:bg, '')
call s:SetHighlight('SpecialKey', s:gray500, '', '')
call s:SetHighlight('SpellCap', '', '', 'undercurl')
call s:SetHighlight('SpellBad', '', '', 'undercurl')
call s:SetHighlight('SpellRare', '', '', 'undercurl')
call s:SetHighlight('StatusLine', s:fg, s:gray700, '')
call s:SetHighlight('StatusLineNC', s:gray500, s:gray900, '')
call s:SetHighlight('StatusLineTerm', s:bg, s:gray900, '')
call s:SetHighlight('StatusLineTermNC', s:bg, s:gray900, '')
call s:SetHighlight('Substitute', s:pink, s:violet, '')
call s:SetHighlight('Title', s:green, '', '')
call s:SetHighlight('VertSplit', s:gray700, 'none', '')
call s:SetHighlight('Visual', '', s:gray800, '')
call s:SetHighlight('WarningMsg', s:orange, '', '')
call s:SetHighlight('WildMenu', s:blue, s:gray800, 'bold')

" Syntax
call s:SetHighlight('Comment', s:gray500, '', 'italic')
call s:SetHighlight('Conceal', s:gray800, 'none', '')
call s:SetHighlight('Constant', s:orange, '', '')
call s:SetHighlight('String', s:green, '', '')
call s:SetHighlight('Character', s:green, '', '')
call s:SetHighlight('Identifier', s:teal, '', '')
call s:SetHighlight('Function', s:blue, '', '')
call s:SetHighlight('Statement', s:purple, '', '')
call s:SetHighlight('Operator', s:cyan, '', '')
call s:SetHighlight('PreProc', s:cyan, '', '')
call s:SetHighlight('Include', s:blue, '', '')
call s:SetHighlight('Define', s:purple, '', '')
call s:SetHighlight('Macro', s:purple, '', '')
call s:SetHighlight('Type', s:yellow, '', '')
call s:SetHighlight('Structure', s:cyan, '', '')
call s:SetHighlight('Special', s:violet, '', '')
call s:SetHighlight('Underlined', s:blue, '', '')
call s:SetHighlight('Error', s:bg, s:red, '')
call s:SetHighlight('Todo', s:orange, 'none', 'italic')

" Git Commit Messages
call s:SetHighlight('gitcommitOverflow', s:red, '', '')
call s:SetHighlight('gitcommitHeader', s:purple, '', '')
call s:SetHighlight('gitcommitUnmerged', s:green, '', '')
call s:SetHighlight('gitcommitSelectedFile', s:green, '', '')
call s:SetHighlight('gitcommitDiscardedFile', s:red, '', '')
call s:SetHighlight('gitcommitUnmergedFile', s:yellow, '', '')
call s:SetHighlight('gitcommitSelectedType', s:green, '', '')
call s:SetHighlight('gitcommitSummary', s:blue, '', '')
call s:SetHighlight('gitcommitDiscardedType', s:red, '', '')
hi link gitcommitNoBranch gitcommitBranch
hi link gitcommitUntracked gitcommitComment
hi link gitcommitDiscarded gitcommitComment
hi link gitcommitSelected gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow gitcommitSelectedFile
hi link gitcommitUnmergedArrow gitcommitUnmergedFile

" Javascript
call s:SetHighlight('javaScriptBraces', s:fg, '', '')
call s:SetHighlight('javaScriptNull', s:orange, '', '')
call s:SetHighlight('javaScriptIdentifier', s:purple, '', '')
call s:SetHighlight('javaScriptNumber', s:orange, '', '')
call s:SetHighlight('javaScriptRequire', s:cyan, '', '')
call s:SetHighlight('javaScriptReserved', s:purple, '', '')

" pangloss/vim-javascript
call s:SetHighlight('jsArrowFunction', s:purple, '', '')
call s:SetHighlight('jsAsyncKeyword', s:purple, '', '')
call s:SetHighlight('jsBraces', s:gray300, '', '')
call s:SetHighlight('jsBrackets', s:gray300, '', '')
call s:SetHighlight('jsClassBraces', s:yellow, '', '')
call s:SetHighlight('jsClassKeyword', s:purple, '', '')
call s:SetHighlight('jsClassDefinition', s:yellow, '', '')
call s:SetHighlight('jsClassNoise', s:gray300, '', '')
call s:SetHighlight('jsDocParam', s:green, '', '')
call s:SetHighlight('jsDocTags', s:gray300, '', '')
call s:SetHighlight('jsDot', s:gray300, '', '')
call s:SetHighlight('jsForAwait', s:purple, '', '')
call s:SetHighlight('jsFlowArgumentDef', s:yellow, '', '')
call s:SetHighlight('jsFrom', s:teal, '', '')
call s:SetHighlight('jsImport', s:teal, '', 'italic')
call s:SetHighlight('jsExport', s:cyan, '', 'italic')
call s:SetHighlight('jsExportDefault', s:purple, '', '')
call s:SetHighlight('jsFuncArgs', s:red, '', '')
call s:SetHighlight('jsFuncArgOperator', s:purple, '', '')
call s:SetHighlight('jsFuncBraces', s:gray300, '', '')
call s:SetHighlight('jsFuncCall', s:blue, '', '')
call s:SetHighlight('jsFuncParens', s:gray300, '', '')
call s:SetHighlight('jsFunction', s:purple, '', '')
call s:SetHighlight('jsGlobalObjects', s:yellow, '', '')
call s:SetHighlight('jsGlobalNodeObjects', s:yellow, '', '')
call s:SetHighlight('jsIfElseBraces', s:violet, '', '')
call s:SetHighlight('jsNull', s:orange, '', '')
call s:SetHighlight('jsStorageClass', s:purple, '', '')
call s:SetHighlight('jsTemplateBraces', s:teal, '', '')
call s:SetHighlight('jsTemplateExpression', s:cyan, '', '')
call s:SetHighlight('jsThis', s:pink, '', 'italic')
call s:SetHighlight('jsOperator', s:cyan, '', '')
call s:SetHighlight('jsObjectBraces', s:gray200, '', '')
call s:SetHighlight('jsObjectColon', s:gray300, '', '')
call s:SetHighlight('jsObjectSeparator', s:gray300, '', '')
call s:SetHighlight('jsObjectKey', s:gray200, '', '')
call s:SetHighlight('jsParens', s:gray300, '', '')
call s:SetHighlight('jsSwitchColon', s:cyan, '', '')
call s:SetHighlight('jsSwitchBraces', s:violet, '', '')
call s:SetHighlight('jsDestructuringNoise', s:violet, '', '')
call s:SetHighlight('jsDestructuringBlock', s:gray200, '', '')
call s:SetHighlight('jsDestructuringBraces', s:violet, '', '')
call s:SetHighlight('jsVariableDef', s:violet, '', '')
call s:SetHighlight('jsUndefined', s:orange, '', '')


" import/export
call s:SetHighlight('typescriptReserved', s:teal, '', 'italic')
call s:SetHighlight('jsImport', s:teal, '', 'italic')
call s:SetHighlight('jsExport', s:cyan, '', 'italic')
call s:SetHighlight('jsModuleAs', s:purple, '', '')
call s:SetHighlight('typescriptBraces', s:gray300, '', '')
call s:SetHighlight('jsModuleBraces', s:gray300, '', '')

" noise
call s:SetHighlight('typescriptEndColons', s:gray300, '', '')
call s:SetHighlight('jsNoise', s:gray300, '', '')

" statements
call s:SetHighlight('typescriptStatement', s:cyan, '', 'italic')
call s:SetHighlight('jsReturn', s:cyan, '', 'italic')

" symbols
call s:SetHighlight('typescriptParens', s:gray300, '', '')
call s:SetHighlight('jsParens', s:gray300, '', '')

" jsx & html
call s:SetHighlight('htmlTagN', s:red, '', '')
call s:SetHighlight('htmlTagName', s:red, '', '')
call s:SetHighlight('htmlSpecialTagName', s:red, '', '')
call s:SetHighlight('jsxComponentName', s:red, '', '')
call s:SetHighlight('jsxTagName', s:red, '', '')
call s:SetHighlight('tsxCloseTagName', s:red, '', '')
call s:SetHighlight('tsxTagName', s:red, '', '')
call s:SetHighlight('jsxCloseString', s:blue, '', '')
call s:SetHighlight('jsxPunct', s:blue, '', '')
call s:SetHighlight('tsxCloseTag', s:blue, '', '')
call s:SetHighlight('tsxTag', s:blue, '', '')
call s:SetHighlight('htmlTag', s:blue, '', '')
call s:SetHighlight('htmlEndTag', s:blue, '', '')
call s:SetHighlight('xmlEndTag', s:blue, '', '')
call s:SetHighlight('xmlTag', s:blue, '', '')
call s:SetHighlight('xmlTagName', s:blue, '', '')
call s:SetHighlight('vueSurroundingTag', s:blue, '', '')
" attribute
call s:SetHighlight('jsxAttrib', s:yellow, '', 'italic')




" JSON
call s:SetHighlight('jsonBraces', s:fg, '', '')

" CSS
call s:SetHighlight('cssAttrComma', s:fg, '', '')
call s:SetHighlight('cssPseudoClassId', s:yellow, '', '')
call s:SetHighlight('cssBraces', s:fg, '', '')
call s:SetHighlight('cssClassName', s:yellow, '', '')
call s:SetHighlight('cssClassNameDot', s:yellow, '', '')
call s:SetHighlight('cssFunctionName', s:blue, '', '')
call s:SetHighlight('cssIncludeKeyword', s:purple, '', '')
call s:SetHighlight('cssTagName', s:red, '', '')
call s:SetHighlight('cssMediaType', s:orange, '', '')
call s:SetHighlight('cssProp', s:fg, '', '')
call s:SetHighlight('cssSelectorOp', s:cyan, '', '')
call s:SetHighlight('cssSelectorOp2', s:cyan, '', '')

" HTML
call s:SetHighlight('htmlLink', s:pink, '', '')
call s:SetHighlight('htmlTitle', s:fg, '', '')
call s:SetHighlight('htmlArg', s:yellow, '', 'italic')

" XML
call s:SetHighlight('xmlAttrib', s:yellow, '', 'italic')

" PHP
call s:SetHighlight('phpClass', s:yellow, '', '')
call s:SetHighlight('phpType', s:purple, '', '')
call s:SetHighlight('phpUseNamespaceSeparator', s:gray500, '', '')
call s:SetHighlight('phpMethod', s:blue, '', '')
call s:SetHighlight('phpFunction', s:blue, '', '')

" Markdown
call s:SetHighlight('markdownBold', s:white, '', 'bold')
call s:SetHighlight('markdownCode', s:cyan, '', '')
call s:SetHighlight('markdownCodeBlock', s:cyan, '', '')
call s:SetHighlight('markdownCodeDelimiter', s:cyan, '', '')
call s:SetHighlight('markdownH1', s:red, '', '')
call s:SetHighlight('markdownH2', s:orange, '', '')
call s:SetHighlight('markdownH3', s:yellow, '', '')
call s:SetHighlight('markdownH4', s:green, '', '')
call s:SetHighlight('markdownH5', s:green, '', '')
call s:SetHighlight('markdownHeadingDelimiter', s:gray500, '', '')
call s:SetHighlight('markdownHeadingRule', s:gray500, '', '')
call s:SetHighlight('markdownId', s:purple, '', '')
call s:SetHighlight('markdownLinkText', s:blue, '', '')
call s:SetHighlight('markdownItalic', s:gray300, '', 'italic')
call s:SetHighlight('markdownListMarker', s:orange, '', '')
call s:SetHighlight('markdownOrderedListMarker', s:orange, '', '')
call s:SetHighlight('markdownRule', s:gray500, '', '')
call s:SetHighlight('markdownUrl', s:purple, '', '')
call s:SetHighlight('markdownUrlTitleDelimiter', s:violet, '', '')
call s:SetHighlight('markdownUrlTitle', s:violet, '', '')

" Vim
call s:SetHighlight('vimUserFunc', s:fg, '', '')

" vim-fugitive
call s:SetHighlight('diffAdded', s:green, '', '')
call s:SetHighlight('diffRemoved', s:red, '', '')
call s:SetHighlight('diffSubname', s:fg, '', '')
call s:SetHighlight('diffIndexLine', s:gray500, '', '')
call s:SetHighlight('diffFile', s:gray500, '', '')
call s:SetHighlight('fugitiveHeader', s:blue, '', '')
call s:SetHighlight('fugitiveHeading', s:purple, '', '')
call s:SetHighlight('fugitiveSymbolicRef', s:gray200, '', '')
call s:SetHighlight('fugitiveStagedHeading', s:green, '', '')
call s:SetHighlight('fugitiveStagedModifier', s:gray500, '', '')
call s:SetHighlight('fugitiveUnstagedHeading', s:yellow, '', '')
call s:SetHighlight('fugitiveUnstagedModifier', s:gray500, '', '')
call s:SetHighlight('fugitiveUntrackedHeading', s:red, '', '')
call s:SetHighlight('fugitiveUntrackedModifier', s:gray500, '', '')

" coc-smartf
augroup Smartf
  autocmd User SmartfEnter :call s:SetHighlight('Conceal', s:bg, s:caret, '')
  autocmd User SmartfLeave :call s:SetHighlight('Conceal', s:gray800, 'none', '')
augroup end

" CocExplorer
call s:SetHighlight('CocExplorerNormal', s:red, 'none', '')
call s:SetHighlight('CocExplorerIndentLine', s:gray800, 'none', '')
call s:SetHighlight('CocExplorerFileRootName', s:purple, 'none', 'italic')
call s:SetHighlight('CocExplorerFileDirectory', s:blue, 'none', '')

" Neovim terminal colors
if has('nvim')
  let g:terminal_color_background = s:bg
  let g:terminal_color_foreground = s:fg
  let g:terminal_color_0 = s:black
  let g:terminal_color_1 = s:red
  let g:terminal_color_2 = s:green
  let g:terminal_color_3 = s:yellow
  let g:terminal_color_4 = s:blue
  let g:terminal_color_5 = s:purple
  let g:terminal_color_6 = s:cyan
  let g:terminal_color_7 = s:white
  let g:terminal_color_8 = s:gray500
  let g:terminal_color_9 = g:terminal_color_1
  let g:terminal_color_10 = g:terminal_color_2
  let g:terminal_color_11 = g:terminal_color_3
  let g:terminal_color_12 = g:terminal_color_4
  let g:terminal_color_13 = g:terminal_color_5
  let g:terminal_color_14 = g:terminal_color_6
  let g:terminal_color_15 = g:terminal_color_7
endif
