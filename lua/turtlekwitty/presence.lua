require("presence").setup({
	auto_update       = true,                      -- Update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
	neovim_image_text = "The One True Text Editor", -- Text displayed when hovered over the Neovim image
	main_image        = "neovim",                  -- Main image display (either "neovim" or "file")
	show_time         = true,
})
