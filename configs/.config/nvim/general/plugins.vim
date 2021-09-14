" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    " Add syntax highlighting for most languages
    Plug 'sheerun/vim-polyglot'

    " Cool Icons (need nerd fonts)
    Plug 'ryanoasis/vim-devicons'

    " Theme
    Plug 'NLKNguyen/papercolor-theme'

    " Comment stuff with gc
    Plug 'tpope/vim-commentary'

    " Status Line
    Plug 'hoob3rt/lualine.nvim'

    " FZF
    " Have the file system follow you around (useful for fzf search)
    Plug 'airblade/vim-rooter'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    
    " Treesitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

    " Indentation guides
    Plug 'lukas-reineke/indent-blankline.nvim'   

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
