set iskeyword+=-                      	" treat dash separated words as a word text object"
set formatoptions-=cro                  " Stop newline continution of comments
set awa
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
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
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
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

" Save on focus lost
autocmd BufLeave,FocusLost * silent! wall
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" When editing read only files use w!! and it will ask for sudo
cmap w!! w !sudo tee %
