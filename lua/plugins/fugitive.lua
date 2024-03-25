return {
    'tpope/vim-fugitive',
    config = function()
        vim.keymap.set("n", "gg", vim.cmd.Git)
    end
}
