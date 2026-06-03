-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Yank selection to system clipboard" })

vim.keymap.set("n", "<leader>p", '"+p', { desc = "Paste from system clipboard" })
vim.keymap.set("v", "<leader>p", '"+p', { desc = "Paste from system clipboard" })

local map = vim.keymap.set
local dap = require("dap")
map("n", "<F9>", dap.continue)
map("n", "<F8>", dap.step_over)
map("n", "<F11>", dap.step_into)
map("n", "<F10>", dap.toggle_breakpoint)
vim.keymap.set("n", "<leader>db", function()
  require("dapui").open()()
end)
