-- vim.opt.list = true
-- vim.opt.listchars:append "space: "
-- vim.opt.listchars:append "eol: "
--


require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    -- show_current_context_start = true,
}


-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#00FF00 gui=nocombine]]
-- vim.api.nvim_set_hl(0, "IndentBlanklineIndent", { fg = "#00FF00", nocombine=true})
