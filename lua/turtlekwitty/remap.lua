vim.g.mapleader = " "
vim.keymap.set("n", "<leader>f", ":Explore<CR>")
vim.keymap.set("n", "<leader>m", ":make<CR>")
vim.keymap.set("n", "<leader>n", ":cn<CR>")
vim.keymap.set("i", "<C-h>", "<C-o>h", { noremap = false }) --This one already is default (???) but just to be safe
vim.keymap.set("i", "<C-j>", "<C-o>j", { noremap = false })
vim.keymap.set("i", "<C-k>", "<C-o>k")
vim.keymap.set("i", "<C-l>", "<C-o>l")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]])
vim.keymap.set("n", "<leader>P", [["+P]])

vim.keymap.set("n", "<leader>j", ":cn<CR>")
vim.keymap.set("n", "<leader>k", ":cl<CR>")
