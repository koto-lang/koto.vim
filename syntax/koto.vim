if exists("b:current_syntax")
  finish
endif

syntax keyword kotoConditionals if else match switch then
syntax keyword kotoDebug debug
syntax keyword kotoExceptions catch finally throw try
syntax keyword kotoKeywords export from import not num2 num4 return yield
syntax keyword kotoRepeating break continue for in loop until while
syntax keyword kotoSelf self
syntax keyword kotoTodos contained TODO FIXME NOTE

syntax keyword kotoAsserts assert assert_eq assert_ne assert_near

syntax match kotoFunction "|"

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

syntax region kotoString start=/"/ end=/"/

syntax keyword kotoBoolean true false
syntax match kotoNumber "\v<\d+>"
syntax match kotoNumber "\v<(\d+_+)+\d+(\.\d+(_+\d+)*)?>"
syntax match kotoNumber "\v<\d+\.\d+>"
syntax match kotoNumber "\v<\d*\.?\d+([Ee]-?)?\d+>"
syntax match kotoMember "\v([^..][.])@<=<\w+>"

highlight default link kotoInlineComment Comment
highlight default link kotoMultilineComment Comment

highlight default link kotoConditionals Conditional
highlight default link kotoDebug Debug
highlight default link kotoExceptions Exception
highlight default link kotoKeywords Keyword
highlight default link kotoRepeating Repeat
highlight default link kotoTodos Todo

highlight default link kotoAsserts Macro
highlight default link kotoFunction Operator
highlight default link kotoMember Identifier
highlight default link kotoOperator Operator

highlight default link kotoBoolean Boolean
highlight default link kotoNumber Number
highlight default link kotoSelf Constant
highlight default link kotoString String
