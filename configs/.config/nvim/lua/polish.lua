-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Save on focus lost
vim.api.nvim_create_autocmd(
  { "BufLeave", "FocusLost" },
  { pattern = "*", command = "silent! wall", desc = "Save on Focus Lost" }
)
