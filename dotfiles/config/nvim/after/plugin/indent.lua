-- vim.opt.list = true
-- vim.opt.listchars:append "space: "
-- vim.opt.listchars:append "eol: "
--


require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}


vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.api.nvim_set_hl(0, "IndentBlanklineIndent", { fg = "#FF0000", nocombine=true})
vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = "#353535", nocombine=true})
-- vim.api.nvim_set_hl(0, "IndentBlanklineContextChar", { fg = "#0000FF", nocombine=true})
-- vim.api.nvim_set_hl(0, "IndentBlanklineContextStart", { fg = "#FF0000", nocombine=true})
