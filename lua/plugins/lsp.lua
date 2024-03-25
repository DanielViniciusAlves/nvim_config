return {
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'L3MON4D3/LuaSnip' },
    {
        'VonHeikemen/lsp-zero.nvim',
        config = function()
            local lsp_zero = require('lsp-zero')
            require('lspconfig').lua_ls.setup({})
            -- require('lspconfig').elixirls.setup({})

            lsp_zero.on_attach(function(client, bufnr)
                lsp_zero.default_keymaps({ buffer = bufnr })
                local opts = { buffer = bufnr }

                lsp_zero.buffer_autoformat()
                vim.keymap.set({ 'n', 'x' }, '<leader>f', function()
                    vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
                end, opts)
            end)

            require('mason').setup({})
            require('mason-lspconfig').setup({
                ensure_installed = {
                    "elixirls"
                },
                handlers = {
                    lsp_zero.default_setup,
                },
            })

            lsp_zero.set_sign_icons({
                error = 'E',
                warn = 'W',
                hint = 'H',
                info = 'I'
            })
        end
    },
}
