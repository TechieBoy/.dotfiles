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

    " FZF
    " Have the file system follow you around (useful for fzf search)
    Plug 'airblade/vim-rooter'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    
    " Treesitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

    " Indentation guides
    Plug 'lukas-reineke/indent-blankline.nvim'   

    " Snippets
    Plug 'L3MON4D3/LuaSnip'


    " Language Server
    Plug 'neovim/nvim-lspconfig'

    " Python black
    Plug 'psf/black', {'for': 'python', 'do': ':BlackUpgrade' }


    " Autocompletion
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'saadparwaiz1/cmp_luasnip'



call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
