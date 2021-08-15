syntax enable                           " Enables syntax highlighing
let $NVIM_TUI_ENABLE_TRUE_COLOR=1       " Enable true color
set t_Co=256                            " Support 256 colors
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
colorscheme PaperColor
" Transparent background
hi Normal guibg=none ctermbg=none

" set guifont=IBM\ Plex\ Mono
" set guifont=Fira\ Code\ Nerd\ Font\ Regular
