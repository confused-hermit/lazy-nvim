-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local augroup = vim.api.nvim_create_augroup -- Create/get autocommand group

local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

augroup("sort_imports", { clear = true })

autocmd("Filetype", {
  group = "sort_imports",
  pattern = { "python" },
  command = 'lua vim.keymap.set("n", "<leader>co", "<cmd>PyrightOrganizeImports<cr>", {desc = "Organize Imports", silent=True })',
})
augroup("golang", { clear = true })

autocmd("Filetype", {
  group = "golang",
  pattern = { "go" },
  command = 'lua vim.keymap.set("n", "<leader>co", "<cmd>GoModTidy<cr>", {desc = "Organize Imports" })',
})

local keymap = vim.keymap.set
keymap("n", "<Tab>", ">>_")
keymap("n", "<S-Tab>", "<<_")
local opts = { silent = true }
-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)
keymap("i", "jk", "<ESC>", opts)

keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", opts)

keymap("n", "<leader>ut", ":UndotreeToggle<cr>", { desc = "Toggle undo tree", silent = true })
