set awa                                 " Enable autosave
set hidden                              " Required to keep multiple buffers open
set nowrap                              " Display long lines as just one line
set iskeyword+=-                      	" treat dash separated words as a word text object"
set textwidth=120                       " 120 character width
set formatoptions-=cro                  " Stop newline continution of comments
set encoding=utf-8                      " The encoding displayed 
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler                               " Show the cursor position all the time
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=4                           " Insert 4 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set autoindent                          " Good auto indent
set smartindent                         " Makes indenting smart
set number                              " Line numbers
set relativenumber                      " Relative line numbers
set background=dark                     " tell vim what the background color looks like
set showtabline=1                       " Always show tabs
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set updatetime=300                      " Faster completion
set clipboard=unnamedplus               " Copy paste between vim and everything else
set mmp=20000                           " Increase max memory used while matching regexes
set incsearch                           " Incremental search
set nohlsearch                          " No highlights after search
set smartcase                           " Search smart
set ignorecase                          " Ignore case while searching
set scrolloff=8                         " Start scrolling when you reach 8 lines away

let g:netrw_liststyle = 3               " Tree style for file browsing
let g:netrw_banner = 0                  " Don't show banner for file browser
let g:netrw_browse_split = 4            " Open files in prev buffer
let g:netrw_winsize = 20                " Use 20% of the window

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Save on focus lost
autocmd BufLeave,FocusLost * silent! wall
" Disable tmux status bar when inside vim
" autocmd VimEnter,FocusGained * silent !tmux set status off
" autocmd VimLeave,FocusLost * silent !tmux set status on

" When editing read only files use w!! and it will ask for sudo
cmap w!! w !sudo tee %
