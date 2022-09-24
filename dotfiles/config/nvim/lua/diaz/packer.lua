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

end)

