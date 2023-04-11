-- Customize astrovim pre-installed plugins here
return {
  -- disable unwanted default plugins
  { "max397574/better-escape.nvim", enabled = false },
  { "s1n7ax/nvim-window-picker", enabled = false },

  ----------------- Astrovim community plugins -------------------------------
  "AstroNvim/astrocommunity",
  -- Language packs
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  -- Rust tools
  { import = "astrocommunity.pack.rust" },
  {
    "simrat39/rust-tools.nvim",
    opts = function(_, opts)
      opts.tools = {
        inlay_hints = {
          show_parameter_hints = false,
        },
      }
    end,
  },

  -- Import leap and make f key not multiline
  { import = "astrocommunity.motion.leap-nvim" },
  {
    "ggandor/flit.nvim",
    opts = function(_, opts) opts.multiline = false end,
  },

  ------------------    Core plugins       ---------------------------------

  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      opts.section.header.val = {
        "███    ██ ██    ██ ██ ███    ███",
        "████   ██ ██    ██ ██ ████  ████",
        "██ ██  ██ ██    ██ ██ ██ ████ ██",
        "██  ██ ██  ██  ██  ██ ██  ██  ██",
        "██   ████   ████   ██ ██      ██",
      }
    end,
  },
  -- Fix neo-tree defaults
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      opts = {
        window = { position = "right" },
        filesystem = {
          filtered_items = {
            hide_gitignored = false,
            hide_by_pattern = {
              "**/.git",
              "**/node_modules",
              "**/target",
            },
          },
        },
      }
      return opts
    end,
  },
  -- Close notifications early
  { "rcarriga/nvim-notify", opts = function(_, opts) opts.timeout = 1000 end },
  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  -- {
  --   "L3MON4D3/LuaSnip",
  --   config = function(plugin, opts)
  --     require "plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom luasnip configuration such as filetype extend or custom snippets
  --     local luasnip = require "luasnip"
  --     luasnip.filetype_extend("javascript", { "javascriptreact" })
  --   end,
  -- },
  -- {
  --   "windwp/nvim-autopairs",
  --   config = function(plugin, opts)
  --     require "plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom autopairs configuration such as custom rules
  --     local npairs = require "nvim-autopairs"
  --     local Rule = require "nvim-autopairs.rule"
  --     local cond = require "nvim-autopairs.conds"
  --     npairs.add_rules(
  --       {
  --         Rule("$", "$", { "tex", "latex" })
  --           -- don't add a pair if the next character is %
  --           :with_pair(cond.not_after_regex "%%")
  --           -- don't add a pair if  the previous character is xxx
  --           :with_pair(
  --             cond.not_before_regex("xxx", 3)
  --           )
  --           -- don't move right when repeat character
  --           :with_move(cond.none())
  --           -- don't delete if the next character is xx
  --           :with_del(cond.not_after_regex "xx")
  --           -- disable adding a newline when you press <cr>
  --           :with_cr(cond.none()),
  --       },
  --       -- disable for .vim files, but it work for another filetypes
  --       Rule("a", "a", "-vim")
  --     )
  --   end,
  -- },
  -- By adding to the which-key config and using our helper function you can add more which-key registered bindings
  -- {
  --   "folke/which-key.nvim",
  --   config = function(plugin, opts)
  --     require "plugins.configs.which-key"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- Add bindings which show up as group name
  --     local wk = require "which-key"
  --     wk.register({
  --       b = { name = "Buffer" },
  --     }, { mode = "n", prefix = "<leader>" })
  --   end,
  -- },
}
