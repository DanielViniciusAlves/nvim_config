return {
    'github/copilot.vim',
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup({
                toggler = { line = 'gcc', block = 'gcb' },
                opleader = { line = '<leader>c', block = 'gb' },
                extra = { above = 'gcO', below = 'gco', eol = 'gcA' },
            })
        end
    },
    {
        'alexghergh/nvim-tmux-navigation',
        config = function()
            require 'nvim-tmux-navigation'.setup {
                disable_when_zoomed = true,
                keybindings = {
                    left = "<C-h>",
                    down = "<C-j>",
                    up = "<C-k>",
                    right = "<C-l>",
                    last_active = "<C-\\>",
                    next = "<C-Space>",
                }
            }
        end
    },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'L3MON4D3/LuaSnip' },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
    },
    'nvim-lua/plenary.nvim',
    'github/copilot.vim'
}
