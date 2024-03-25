return {
    'nvim-lua/plenary.nvim',
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        config = function()
            vim.cmd [[hi SignColumn guibg=NONE]]
            local harpoon = require("harpoon")
            harpoon:setup({})

            vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
            vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

            vim.keymap.set("n", "<M-q>", function() harpoon:list():select(1) end)
            vim.keymap.set("n", "<M-w>", function() harpoon:list():select(2) end)
            vim.keymap.set("n", "<M-e>", function() harpoon:list():select(3) end)
            vim.keymap.set("n", "<M-r>", function() harpoon:list():select(4) end)

            -- Toggle previous & next buffers stored within Harpoon list
            vim.keymap.set("n", "<M-n>", function() harpoon:list():prev() end)
            vim.keymap.set("n", "<M-p>", function() harpoon:list():next() end)
        end
    }

}
