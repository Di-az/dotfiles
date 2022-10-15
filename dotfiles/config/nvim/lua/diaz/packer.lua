-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use('wbthomason/packer.nvim')
    
    -- Colorschemes
    use('folke/tokyonight.nvim')
    use("gruvbox-community/gruvbox")
    use('joshdick/onedark.vim')


    -- TreeSitter
    use({'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    })


    -- Debugger
    use('mfussenegger/nvim-dap')


    -- Tabs
    use {
        'romgrk/barbar.nvim',
        requires = {'kyazdani42/nvim-web-devicons'}
    }

    -- Fuzzy Finder
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- File Explorer
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        -- tag = 'nightly' -- optional, updated every week. (see issue #1193)
}
end)

