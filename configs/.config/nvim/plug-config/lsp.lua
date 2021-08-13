if vim.api.nvim_eval('executable("pyright")') == 1 then
    require'lspconfig'.pyright.setup{}
end
