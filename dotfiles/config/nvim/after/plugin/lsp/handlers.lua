local _border = "rounded"

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
	border = _border,
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
	border = _border,
})

vim.diagnostic.config({
	underline = true,
	virtual_text = {
		source = "always", -- Or "if_many"
	},

	float = {
		-- show_header = true,
		-- source = "always",
		border = _border,
	},
})
