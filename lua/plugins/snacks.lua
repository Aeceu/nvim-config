---@class snacks.dashboard.Config
---@field enabled? boolean
---@field sections snacks.dashboard.Section
---@field formats table<string, snacks.dashboard.Text|fun(item:snacks.dashboard.Item, ctx:snacks.dashboard.Format.ctx):snacks.dashboard.Text>
return {
  {
    "snacks.nvim",
    opts = {
      picker = {
        files = {
          hidden = true,
        },
        hidden = true,
        ignore = true,
      },
      dashboard = {
        preset = {
          pick = function(cmd, opts)
            return LazyVim.pick(cmd, opts)()
          end,
          header = [[
            ██╗  ██╗██████╗ ██╗   ██╗ ██████╗ ███████╗██████╗ 
            ██║ ██╔╝██╔══██╗██║   ██║██╔════╝ ██╔════╝██╔══██╗
            █████╔╝ ██████╔╝██║   ██║██║  ███╗█████╗  ██████╔╝
            ██╔═██╗ ██╔══██╗██║   ██║██║   ██║██╔══╝  ██╔══██╗
            ██║  ██╗██║  ██║╚██████╔╝╚██████╔╝███████╗██║  ██║
            ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚══════╝╚═╝  ╚═╝
          ]],

          -- -- stylua: ignore
          -- ---@type snacks.dashboard.Item[]
          -- keys = {
          --   { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          --   { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          --   { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          --   { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          --   { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          --   { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          --   { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          --   { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          --   { icon = " ", key = "q", desc = "Quit", action = ":qa" },
          -- },
        },
        sections = {
          { section = "header" },
          { section = "keys", index = 2, padding = 2 },
          { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 2 },
          { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 2 },
          { section = "startup" },
        },
      },
    },
  },
}
