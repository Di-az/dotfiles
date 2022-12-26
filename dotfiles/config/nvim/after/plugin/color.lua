require('rose-pine').setup({
    disable_background = true
})

require('onedark').setup  {
    transparent = true,  -- Show/hide background
}

-- vim.g.gruvbox_contrast_dark = 'hard'
-- vim.g.tokyonight_transparent_sidebar = true
-- vim.g.tokyonight_transparent = true
-- vim.g.gruvbox_invert_selection = '0'
-- vim.opt.background = "dark"


-- SET UP COLORSCHEME
local my_colorscheme = "rose-pine"

function ColorMyPencils(color)
    my_colorscheme = color or my_colorscheme
    vim.cmd.colorscheme(my_colorscheme)

    local hl = function(thing, opts)
        vim.api.nvim_set_hl(0, thing, opts)
    end

    -- Transparent Neovim
    hl("Normal", { bg = "none" })

    hl("NormalFloat", { bg = "none" })





    -- Indent line
    hl("IndentBlanklineContextStart", { fg = "#FF0000", nocombine = true})
    hl("IndentBlanklineContextChar", { fg = "#FFFF00", nocombine = true})
    hl("IndentBlanklineChar", { fg = "#353535", nocombine = true})








    hl("SignColumn", { bg = "none", })

    hl("TabLine", { bg = "none", })

    -- hl("ColorColumn", { ctermbg = 0, bg = "#2B79A0", })

    -- COLUMN LINE
    hl("CursorLineNR", { bg = "None", fg = "#E24329" })

    -- hl("LineNr", { fg = "#5eacd3" })

end

ColorMyPencils(my_colorscheme)
