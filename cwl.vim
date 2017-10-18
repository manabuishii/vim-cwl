" Vim syntax file
" Language: Common Workflow Language
" Maintainer: Manabu Ishii
" Latest Revision: 2017-10-18

" Download
"  curl -o ~/.vim/syntax/cwl.vim http://raw.github.com/
" Add .vimrc
"  autocmd FileType cwl set iskeyword+=-
"  autocmd FileType cwl set iskeyword+=.
"  au BufRead,BufNewFile *.cwl set filetype=cwl

if exists("b:current_syntax")
  finish
endif

" Comment comment.line.number-sign
syntax region cwlComment start=+#+ end=+$+
" Statement keyword.control.cwl
syntax keyword cwlStatement cwlVersion inputs outputs class steps id requirements hints label doc cwlVersion secondaryFiles streamable outputBinding format outputSource linkMerge type glob loadContents outputEval merge_nested merge_flattened location path basename dirname nameroot nameext checksum size format contents listing fields symbols items in out run scatter scatterMethod source default valueFrom expressionLib types linkMerge inputBinding position prefix separate itemSeparator valueFrom shellQuote packages package version specs entry entryname writable baseCommand arguments stdin stderr stdout successCodes temporaryFailCodes permanentFailCodes dockerPull dockerLoad dockerFile dockerImport dockerImageId dockerOutputDirectory envDef envName envValue coresMin coresMax ramMin ramMax tmpdirMin tmpdirMax outdirMin outdirMax
" Keyword support.type.cwl
syntax keyword cwlKeyword CommandLineTool ExpressionTool Workflow InlineJavascriptRequirement SchemaDefRequirement DockerRequirement SoftwareRequirement InitialWorkDirRequirement EnvVarRequirement ShellCommandRequirement ResourceRequirement
" Type storage.type.cwl
syntax keyword cwlType null boolean int long float double string File Directory
" Constant storage.constant.cwl
syntax keyword cwlConstant draft-2 draft-3.dev1 draft3-dev2 draft3-dev3 draft3-dev4 draft3-dev5 draft3 draft4.dev1 draft4.dev2 draft4.dev3 v1.0.dev4 v1.0
" String
syntax region cwlString start=+"+ end=+"+

highlight link cwlComment Comment
highlight link cwlStatement Statement
highlight link cwlKeyword Keyword
highlight link cwlType Type
highlight link cwlConstant Constant
highlight link cwlString String

let b:current_syntax = "cwl"