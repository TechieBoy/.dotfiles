" LSP config
" Goto definition/declarations/references with g
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>

" Rename variable/function with gR
nnoremap <silent> gR <cmd>lua vim.lsp.buf.rename()<CR>

" Press K for info and C-k for signature help
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>

" C-n and C-p for next/prev diagnostic
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" C-j for code action at current place
nnoremap <silent> <C-j> <cmd>lua vim.lsp.buf.code_action()<CR>

if executable("pyright")
    lua require'lspconfig'.pyright.setup{}
    " Format before Writing buffer
    autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 1000)
    " Always show signcolumn
    autocmd BufRead,BufNewFile *.py setlocal signcolumn=yes
endif

if executable("rust-analyzer")
    lua require'lspconfig'.rust_analyzer.setup({})
    " Format before Writing buffer
    autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync(nil, 1000)
    " Always show signcolumn
    autocmd BufRead,BufNewFile *.rs setlocal signcolumn=yes
endif
