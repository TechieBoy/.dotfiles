" Enable/Disable plugin here
let g:indent_blankline_enabled = v:true

" Don't show first index level
let g:indent_blankline_show_first_indent_level = v:false

" Use treesitter for context
let g:indent_blankline_use_treesitter = v:true
let g:indent_blankline_show_current_context = v:true
" Patterns: https://github.com/tree-sitter/tree-sitter-typescript/blob/master/tsx/src/node-types.json
let g:indent_blankline_context_patterns = [ "declaration", "expression", "pattern", "primary_expression", "statement", "switch_body"]
