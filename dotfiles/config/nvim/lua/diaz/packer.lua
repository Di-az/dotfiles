-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use('wbthomason/packer.nvim')

    -- Barbar breaks so I moved it here
    use 'nvim-tree/nvim-web-devicons'
    use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}

    --------------------
    ---- APPEARANCE ----
    --------------------
    -- Colorschemes
    use('folke/tokyonight.nvim')
    use('gruvbox-community/gruvbox')
    use('navarasu/onedark.nvim')

    use({'rose-pine/neovim', as = 'rose-pine'})
    use { "catppuccin/nvim", as = "catppuccin" }

    -- Colorize indentation
    use('lukas-reineke/indent-blankline.nvim')

    -- Zen
    use('folke/zen-mode.nvim')
    use('folke/twilight.nvim')


    -- Statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -----------------------
    ---- FUNCTIONALITY ----
    -----------------------
    -- TreeSitter
    use({'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    })

    -- LSP
    use('williamboman/mason.nvim')
    use('williamboman/mason-lspconfig.nvim')
    use('neovim/nvim-lspconfig')
    use({'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-nvim-lsp-signature-help',
            'saadparwaiz1/cmp_luasnip'
        }
    })
    use('onsails/lspkind.nvim')

    -- Snippets
    use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { 'nvim-lua/plenary.nvim' }
    }
    use({'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }) -- FZF integration
    use('nvim-telescope/telescope-file-browser.nvim') -- File browsing
    use('nvim-telescope/telescope-symbols.nvim') -- Emojis

    -- Linter
    use {
        'jose-elias-alvarez/null-ls.nvim',
        requires = { 'nvim-lua/plenary.nvim' }
    }

    -- Undotree
    use('mbbill/undotree')

    -- Debugger
    use('mfussenegger/nvim-dap')

    -- Rest
    use {
        "rest-nvim/rest.nvim",
        requires = { "nvim-lua/plenary.nvim" },
    }

    -- Comment
    use ('numToStr/Comment.nvim')

    -- Marks
    use('chentoast/marks.nvim')


    -- Closing tags
    use('windwp/nvim-autopairs')
    use('mfussenegger/nvim-jdtls')

    -- File Explorer
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        -- tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- Notifications
    use('rcarriga/nvim-notify')


    ----------------
    ---- IDK ------
    ----------------
    -- Neogit
    use({ 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' })



end)

