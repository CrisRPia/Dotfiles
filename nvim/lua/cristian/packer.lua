-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use("nvim-treesitter/playground")
    use("theprimeagen/harpoon")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }
    use("xiyaowong/transparent.nvim")
    use("frabjous/knap")
    use("vim-pandoc/vim-pandoc")
    use("vim-pandoc/vim-pandoc-syntax")
    use("ctrlpvim/ctrlp.vim")
    use('nvim-telescope/telescope-project.nvim')
    use("mfussenegger/nvim-dap")
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
    use("mfussenegger/nvim-dap-python")
    use("theHamsta/nvim-dap-virtual-text")
    use { "catppuccin/nvim", as = "catppuccin" }
    use("ThePrimeagen/vim-be-good")
    use { 'nvim-telescope/telescope-ui-select.nvim' }
    use("christoomey/vim-tmux-navigator")
    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
                height = 20,
            }
        end
    }
    use("nvim-lualine/lualine.nvim")
    use('nvim-treesitter/nvim-treesitter-context')
    use("Vimjas/vim-python-pep8-indent")

    use({
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
        ft = { "markdown" },
    })
    use("sbdchd/neoformat");
    use { 'Issafalcon/lsp-overloads.nvim'}
    use("xuhdev/vim-latex-live-preview")
    use("mracos/mermaid.vim")
end)
