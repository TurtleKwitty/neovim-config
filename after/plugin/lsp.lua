local lsp = require('lsp-zero').preset({})

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

local cmp = require("cmp")

local cmp_select = { behavior = cmp.SelectBehavior.Select }
vim.keymap.set("i", "<C-k>", cmp.mapping.select_prev_item(cmp_select))
vim.keymap.set("i", "<C-j>", cmp.mapping.select_next_item(cmp_select))
vim.keymap.set("i", "<C-Space>", cmp.mapping.confirm({ select = true }))
vim.keymap.set("i", "<C-Backspace>", cmp.mapping.complete())

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
	vim.keymap.set("n", "<leader>e", function() vim.diagnostic.open_float() end, opts)

	lsp.default_keymaps({ buffer = bufnr })
	lsp.buffer_autoformat()
end)
