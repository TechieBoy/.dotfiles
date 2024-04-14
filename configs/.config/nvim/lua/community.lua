-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- Languages
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.markdown" },
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
  -- Import leap,flit and make f key not multiline
  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.motion.flit-nvim" },
  {
    "ggandor/flit.nvim",
    opts = function(_, opts) opts.multiline = false end,
  },
  -- import/override with your plugins folder
}
