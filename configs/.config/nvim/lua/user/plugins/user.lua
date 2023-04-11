-- Add new plugins here
return {
  -- Add plugins, the lazy syntax
  -- Additional colorschemes
  { "Shatur/neovim-ayu", lazy = false },
  { "jalzn/altbox.nvim", lazy = false },
  { "mikesmithgh/gruvsquirrel.nvim", lazy = false },
  -- Follow around the filesystem
  {
    "airblade/vim-rooter",
    config = function()
      -- one directory per tab
      vim.g.rooter_cd_cmd = "tcd"
      vim.g.rooter_resolve_links = 1
      vim.g.rooter_silent_chdir = 1
      vim.g.rooter_patterns = { ">.config", ".git" }
    end,
    lazy = false,
  },
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
