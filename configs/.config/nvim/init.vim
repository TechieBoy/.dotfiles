source ~/.config/nvim/general/settings.vim
if !exists('g:vscode')
" General Settings
source ~/.config/nvim/general/plugins.vim
source ~/.config/nvim/general/keys.vim
source ~/.config/nvim/general/color_font.vim

" Plugin specific settings
source ~/.config/nvim/plug-config/fzf.vim
source ~/.config/nvim/plug-config/black.vim
source ~/.config/nvim/plug-config/lualine.lua
source ~/.config/nvim/plug-config/treesitter.lua
source ~/.config/nvim/plug-config/indent-blankline.vim
source ~/.config/nvim/plug-config/lsp.lua
endif
