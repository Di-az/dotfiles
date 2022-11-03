vim.opt.background = "dark"

--vim.cmd("colorscheme onedark")

vim.g.my_colorscheme = "onedark"



--vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
--vim.cmd("highlight EndOfBuffer guibg=NONE ctermbg=NONE")

function ColorMyPencils()
    vim.g.gruvbox_contrast_dark = 'hard'
    vim.g.tokyonight_transparent_sidebar = true
    vim.g.tokyonight_transparent = true
    vim.g.gruvbox_invert_selection = '0'
    vim.opt.background = "dark"

    vim.cmd("colorscheme " .. vim.g.my_colorscheme)

    local hl = function(thing, opts)
        vim.api.nvim_set_hl(0, thing, opts)
    end

    hl("SignColumn", {
        bg = "none",
    })

    hl("ColorColumn", {
        ctermbg = 0,
        bg = "#2B79A0",
    })

    hl("CursorLineNR", {
        bg = "None"
    })


    hl("LineNr", {
        fg = "#5eacd3"
    })

    hl("netrwDir", {
        fg = "#5eacd3"
    })
    hl("Normal", {
        bg = "none"
    })
    
end
ColorMyPencils()

