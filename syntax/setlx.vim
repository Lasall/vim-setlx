" Vim syntax file
" Language:     setlX (https://randoom.org/Software/SetlX)
" Maintainer:   Dominique Lasserre
" Filenames:    *.setlx, *.stlx
" Latest Revision: 20.10.2017

if exists("b:current_syntax")
  finish
endif

let s:setlx_cpo_save = &cpo
set cpo&vim

syn keyword     setlxStructure      class
syn keyword     setlxQualifier      static
syn keyword     setlxLabel          case default
syn keyword     setlxConditional    if else switch
syn keyword     setlxRepeat         while for do
syn keyword     setlxExceptions     throw try catch catchLng catchUsr check afterBacktrack backtrack
syn keyword     setlxControl        exit return break continue assert
syn keyword     setlxRegexes        match scan using regex as
syn keyword     setlxProcedure      procedure cachedProcedure closure rw

if !exists("setlx_no_highlight_ops")
    syn match       setlxOperatorLogic      display "\(=>\|||\|&&\|<==>\|<!=>\)"
    syn match       setlxOperatorSingle     display "\(!\||\|:\)"
    syn match       setlxOperatorComparison display "\(==\|!=\|<=\|<\|>=\|>\)"
    syn match       setlxOperatorInfix      display "\(\*\|/\|\\\|%\|<>\)"
    syn match       setlxOperatorPrefix     display "\(\*\*\|+/\|\*/\|#\|-\|+\)"
    syn match       setlxOperatorAssignment display "\(+=\|-=\|\*=\|/=\|\\=\|%=\|:=\)"
endif
syn keyword     setlxOperator           notin in exists forall
syn match       setlxOperatorRange      display "\.\."

syn keyword     setlxConstantOm     om
syn keyword     setlxBoolean        true false

syn match       setlxFunctor        display "\w\@<!\(@\|@@@\)\(\w\)\@="
syn match       setlxLambda         display "|->\||=>"

syn keyword     setlxTodo           contained TODO FIXME XXX

syn match       setlxComment        "//.*" contains=setlxTodo
syn region      setlxCommentMultiLine start="/\*" end="\*/" contains=setlxTodo

syn match       setlxStringEscape contained "\\."
syn region      setlxStringVariable contained start="\$" skip="\\$" end="\$"
syn region      setlxString start="\"" skip="\\\"" end="\"" contains=setlxStringVariable,setlxStringEscape
syn region      setlxStringLiteral start="'" skip="\\'" end="'"

syn match       setlxDecimal        display "\<\d\+\>"
syn match       setlxFloat          display "\<\d*\.\d\+\([Ee][+-]\?\d\+\)\?"

syn match       setlxFunction       "\w\+\(\s*(\)\@="
syn match       setlxFunctionDecl   "\w\+\(\s*:=\s*procedure\)\@=" contains=setlxProcedure,setlxOperatorAssignment


syn region      setlxBlock start="{" end="}" transparent fold


hi def link setlxControl            Statement
hi def link setlxStructure          Structure
hi def link setlxQualifier          Statement
hi def link setlxLabel              Label
hi def link setlxConditional        Conditional
hi def link setlxRepeat             Repeat
hi def link setlxExceptions         Exceptions
hi def link setlxRegexes            Statement
hi def link setlxProcedure          Structure

if !exists("setlx_no_highlight_ops")
    hi def link setlxOperatorAssignment Operator
    hi def link setlxOperatorLogic      Type
    hi def link setlxOperatorComparison Type
    hi def link setlxOperatorPrefix     Type
    hi def link setlxOperatorInfix      Type
    hi def link setlxOperatorSingle     Type
endif
hi def link setlxOperator           Type
hi def link setlxOperatorRange      Operator

hi def link setlxLambda             Structure
hi def link setlxConstantOm         Constant
hi def link setlxBoolean            Boolean
hi def link setlxFunctor            Structure
hi def link setlxTodo               Todo
hi def link setlxComment            Comment
hi def link setlxCommentMultiLine   Comment
hi def link setlxDecimal            Number
hi def link setlxFloat              Float
hi def link setlxFunction           Function
hi def link setlxFunctionDecl       Function
hi def link setlxString             String
hi def link setlxStringLiteral      String
hi def link setlxStringVariable     PreProc
hi def link setlxStringEscape       Special

let b:current_syntax = "setlx"

let &cpo = s:setlx_cpo_save
unlet s:setlx_cpo_save
