-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- Go through all buffers using Tab and Shift-Tab
    ["<Tab>"] = { "<cmd>bnext<cr>" },
    ["<S-Tab>"] = { "<cmd>bprev<cr>" },
    -- Keep cursor in center when using C-d or C-u
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
    -- Rust specific keybinds
    ["<leader>r"] = { name = " Rust" },
    ["<leader>rd"] = { function() require("rust-tools").inlay_hints.disable() end, desc = "Disable inlay hints" },
    ["<leader>re"] = { function() require("rust-tools").inlay_hints.enable() end, desc = "Enable inlay hints" },
    ["<leader>rm"] = { function() require("rust-tools").expand_macro.expand_macro() end, desc = "Expand macros" },
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    -- Better indenting
    ["<"] = { "<gv" },
    [">"] = { ">gv" },
  },
  t = {
    -- Esc to enter normal mode in terminal
    ["<Esc>"] = { "<C-\\><C-n>" },
  },
}
