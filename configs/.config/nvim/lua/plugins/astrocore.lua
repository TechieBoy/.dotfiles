-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 500, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics_mode = 3, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true,
        number = true,
        spell = false,
        signcolumn = "yes:1",
        wrap = false,
        awa = true, -- autosave
        guifont = "Iosevka SS08 Light:h10", -- font for gui clients
        cmdheight = 0, -- Hide command line
        expandtab = true,
        tabstop = 4,
        softtabstop = 4,
        shiftwidth = 4,
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
        autoformat_enabled = true, -- auto formatting at start (lsp.formatting.format_on_save must be enabled)
        icons_enabled = true, -- (disable if no nerd font is available, requires :PackerSync after changing)
        loaded_ruby_provider = 0, -- disable ruby provider
        loaded_perl_provider = 0, -- disable perl provider
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map
        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        ["<Leader>b"] = { desc = "Buffers" },
        ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
        -- Go through all buffers using Tab and Shift-Tab
        ["<Tab>"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["<S-Tab>"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },
        ["<Leader>bD"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Pick to close",
        },

        -- Keep cursor in center when using C-d or C-u
        ["<C-d>"] = { "<C-d>zz" },
        ["<C-u>"] = { "<C-u>zz" },
        -- Plugin specific keybinds
        -- Rust specific keybinds
        -- TODO: add to rust-tools mappings
        ["<Leader>r"] = { name = " Rust" },
        ["<Leader>rd"] = { function() require("rust-tools").inlay_hints.disable() end, desc = "Disable inlay hints" },
        ["<Leader>re"] = { function() require("rust-tools").inlay_hints.enable() end, desc = "Enable inlay hints" },
        ["<Leader>rm"] = { function() require("rust-tools").expand_macro.expand_macro() end, desc = "Expand macros" },
      },
      v = {
        -- Better indenting
        ["<"] = { "<gv" },
        [">"] = { ">gv" },
      },
      t = {
        -- Esc to enter normal mode in terminal
        ["<Esc>"] = { "<C-\\><C-n>" },
        -- setting a mapping to false will disable it
        -- ["<esc>"] = false,
      },
    },
  },
}
