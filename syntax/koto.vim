if exists("b:current_syntax")
  finish
endif

syntax keyword kotoBoolean true false
syntax keyword kotoConditionals if else match switch then
syntax keyword kotoDebug debug
syntax keyword kotoExceptions catch finally throw try
syntax keyword kotoKeywords export from import not num2 num4 return yield
syntax keyword kotoRepeating break continue for in loop until while
syntax keyword kotoSelf self
syntax keyword kotoTodos contained TODO FIXME NOTE

syntax keyword kotoAsserts assert assert_eq assert_ne assert_near

syntax match kotoFunctionArgs "|"

syntax match kotoInlineComment "#.*$"
  \ contains=kotoTodos oneline
syntax region kotoMultilineComment start="#-" end="-#"
  \ contains=kotoTodos,kotoMultilineComment fold

syntax keyword kotoOperator and or
syntax match kotoOperator "+"
syntax match kotoOperator "-"
syntax match kotoOperator "*"
syntax match kotoOperator "/"
syntax match kotoOperator "%"
syntax match kotoOperator ">"
syntax match kotoOperator "<"
syntax match kotoOperator "="
syntax match kotoOperator "!="
syntax match kotoOperator "\.\."
syntax match kotoOperator "\.\.="
syntax match kotoOperator "\["
syntax match kotoOperator "]"
syntax match kotoOperator "{"
syntax match kotoOperator "}"

syntax region kotoString start=/"/ end=/"/ contains=kotoSpecialChar
syntax region kotoString start="'" end="'" contains=kotospecialChar
syntax match kotoSpecialChar contained "\\[\"\\'ntbrf]"

syntax match kotoNumber "\<[0-9]\+"
syntax match kotoNumber "\<0b[01]\+"
syntax match kotoNumber "\<0o[0-7]\+"
syntax match kotoNumber "\<0x[0-9a-fA-F]\+"
syntax match kotoNumber "\<[0-9]\+\%(\.[0-9]\+\)\%(e[+-]\=[0-9_]\+\)*"

syntax match kotoMapKey "\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*\ze:"
syntax match kotoLookup "\.\zs\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*"

highlight default link kotoInlineComment Comment
highlight default link kotoMultilineComment Comment

highlight default link kotoConditionals Conditional
highlight default link kotoDebug Debug
highlight default link kotoExceptions Exception
highlight default link kotoKeywords Keyword
highlight default link kotoRepeating Repeat
highlight default link kotoTodos Todo

highlight default link kotoAsserts Macro
highlight default link kotoMapKey Identifier
highlight default link kotoLookup Function

highlight default link kotoFunctionArgs Operator
highlight default link kotoOperator Operator

highlight default link kotoBoolean Boolean
highlight default link kotoNumber Number
highlight default link kotoSelf Constant
highlight default link kotoString String
highlight default link kotoSpecialChar SpecialChar
