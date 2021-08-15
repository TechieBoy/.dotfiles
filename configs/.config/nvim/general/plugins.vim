" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Cool Icons (need nerd fonts)
    Plug 'ryanoasis/vim-devicons'

    " Theme
    Plug 'NLKNguyen/papercolor-theme'

    " Comment stuff with gc
    Plug 'tpope/vim-commentary'

    " Status Line
    Plug 'hoob3rt/lualine.nvim'

    " Have the file system follow you around (useful for fzf search)
    Plug 'airblade/vim-rooter'

    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " Language Server
    Plug 'neovim/nvim-lspconfig'

    " Autocompletion
    Plug 'hrsh7th/nvim-compe'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
