local peek = require("peek")
peek.setup({
	auto_load = false,
	close_on_bdelete = false,
	syntax = true, -- enable syntax highlighting, affects performance
	theme = "dark", -- 'dark' or 'light'
	update_on_change = true,
	app = "browser", -- 'webview', 'browser', string or a table of strings
	filetype = { "markdown" },
	-- relevant if update_on_change is true
	throttle_at = 200000, -- start throttling when file exceeds this amount of bytes in size
	throttle_time = "auto", -- minimum amount of time in milliseconds that has to pass before starting new render
})

vim.api.nvim_create_user_command("PeekOpen", peek.open, {})
vim.api.nvim_create_user_command("PeekClose", peek.close, {})
