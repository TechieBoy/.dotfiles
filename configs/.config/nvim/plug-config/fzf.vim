
let g:fzf_tags_command = 'ctags -R'
" Border color
let g:fzf_layout = {'window': { 'width': 0.9, 'height': 0.9, 'highlight': 'Todo', 'border': 'rounded' } }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" Open files in new tabs. If file already open, drop to it (See :h drop)
let g:fzf_action = {
      \ 'enter': 'tab drop',
      \ 'ctrl-t': 'drop',
      \ 'ctrl-x': 'split',
      \ 'ctrl-v': 'vsplit' }


" Fzf command shortcuts
nnoremap <leader>p :Files<CR>
nnoremap <leader>f :Rg<CR>
