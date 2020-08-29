syntax match typescriptFuncCall /[a-zA-Z]\k*\ze[(|<]/
  \ containedin=typescriptIdentifierName,typescriptArray,typescriptObjectDestructure,typescriptFuncCallArg,typescriptProp
  \ nextgroup=typescriptFuncCallArg,typescriptTypeBrackets,typescriptTypeArguments,typescriptTypeReference
syntax match typescriptNoise /[:,;{}]/ containedin=typescriptFuncCallArg,typescriptArray
syntax match typescriptObjectSeparator /,/ containedin=typescriptObjectLiteral

hi link typescriptFuncCall Blue
