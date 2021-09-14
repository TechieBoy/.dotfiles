map <Space> <Leader>

" Better indenting
vnoremap < <gv
vnoremap > >gv

" Buffer navigation using Tab and S-Tab
nnoremap <silent> <Tab> :tabn<CR>
nnoremap <silent> <S-Tab> :tabp<CR>
" Save and quit current buffer using Q
nnoremap Q :w\|bd<cr>

" Save using C-s, quit using leader-q
nnoremap <silent> <C-s> :w<CR>
nnoremap <silent> <leader>q :wincmd q<CR>

" Better window movement
nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-l> :wincmd l<CR>

" Make gf open file under cursor in new tab by default
nnoremap gf <C-W>gf
vnoremap gf <C-W>gf
