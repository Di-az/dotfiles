-- vim.opt.list = true
-- vim.opt.listchars:append "space: "
-- vim.opt.listchars:append "eol: "
--

require("indent_blankline").setup({
	char = "|",
	space_char_blankline = " ",
	show_current_context = true,
	use_treesitter = true,
	-- show_current_context_start = true,
})

-- require("indent_blankline").setup({
-- 	enabled = true,
-- 	show_current_context = true,
-- 	char = "|",
-- 	char_blankline = "┆",
-- 	context_char = "*",
-- 	use_treesitter_scope = false,
-- })
