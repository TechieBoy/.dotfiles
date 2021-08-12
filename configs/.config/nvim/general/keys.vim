map <Space> <Leader>
" Capslock to escape, only works with one instance of vim
au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

" Better indenting
vnoremap < <gv
vnoremap > >gv

" Buffer navigation using Tab and S-Tab
nnoremap <silent> <Tab> :bnext<CR>
nnoremap <silent> <S-Tab> :bprev<CR>
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

" Fzf command shortcuts
nnoremap <leader>p :Files!<CR>
nnoremap <leader>f :Rg!<CR>

