local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("config.keymap")
require("lazy").setup("plugins")
require("config.options")

vim.keymap.set("n", "<leader>ct", vim.cmd.CopilotChatTests)
vim.keymap.set("n", "<leader>cc", vim.cmd.CopilotChat)
vim.keymap.set("n", "<leader>cf", vim.cmd.CopilotChatFix)
vim.keymap.set("n", "<leader>ce", vim.cmd.CopilotChatExplain)
