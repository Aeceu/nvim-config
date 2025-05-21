-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Auto-remove padding when Neovim starts
--
function RemoveKittyPadding()
  local socket = vim.env.KITTY_LISTEN_ON
  if socket then
    vim.fn.jobstart({ "kitty", "@", "--to", socket, "set-spacing", "padding=0" })
  end
end

vim.api.nvim_set_keymap("n", "<leader>zp", ":lua RemoveKittyPadding()<CR>", { noremap = true, silent = true })

vim.api.nvim_create_autocmd("VimEnter", {
  callback = RemoveKittyPadding,
})

vim.cmd([[
  highlight VertSplit guifg=#ff8800 guibg=NONE
]])
