local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	local toGrep = vim.fn.input("Grep > ")
	print(toGrep)
	builtin.grep_string({search = toGrep});
end)
