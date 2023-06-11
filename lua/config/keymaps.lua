-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local augroup = vim.api.nvim_create_augroup -- Create/get autocommand group

local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

augroup("sort_imports", { clear = true })

autocmd("Filetype", {
  group = "sort_imports",
  pattern = { "python" },
  command = 'lua vim.keymap.set("n", "<leader>co", "<cmd>PyrightOrganizeImports<cr>", {desc = "Organize Imports" })',
})
