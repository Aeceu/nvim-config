-- return {
--   {
--     "folke/tokyonight.nvim",
--     opts = {
--       -- transparent = true,
--       -- styles = {
--       --   sidebars = "transparent",
--       --   floats = "transparent",
--       -- },
--     },
--   },
--
-- }

return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    opts = {
      terminal_colors = true, -- enable terminal colors
      transparent_mode = false,
      dim_inactive = false,
      contrast = "soft",
    },
    config = function(_, opts)
      require("gruvbox").setup(opts)
      vim.cmd.colorscheme("gruvbox")
    end,
  },
}
