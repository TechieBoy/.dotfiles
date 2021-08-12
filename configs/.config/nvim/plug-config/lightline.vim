set laststatus=2                        " Always display the status line
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
" Set colorscheme to papercolor, show buffers instead of tabs at the top
let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ 'separator' : { 'left': "\ue0b8", 'right': "\ue0be" },
      \ 'subseparator' : { 'left': "\ue0b9", 'right': "\ue0b9" },
      \ 'tabline_separator' : { 'left': "\ue0bc", 'right': "\ue0ba" },
      \ 'tabline_subseparator' : { 'left': "\ue0bb", 'right': "\ue0bb" },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ ['close'] ]
      \ },
	  \ 'active': {
	  \   'left': [ [ 'mode', 'paste' ],
	  \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
	  \ },
	  \ 'component_function': {
	  \   'cocstatus': 'coc#status'
	  \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ },
      \ 'enable' : {'tabline': 1}
      \ }
