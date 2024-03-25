return {
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        branch = "canary",
        dependencies = {
            { "zbirenbaum/copilot.lua" },
            { "nvim-lua/plenary.nvim" }
        },
        opts = {
            debug = true
        },
        -- config = function()
        -- vim.keymap.set("n", "<leader>ct", vim.cmd.CopilotChatTests)
        -- vim.keymap.set("n", "<leader>cc", vim.cmd.CopilotChat)
        -- vim.keymap.set("n", "<leader>cf", vim.cmd.CopilotChatFix)
        -- vim.keymap.set("n", "<leader>ce", vim.cmd.CopilotChatExplain)
        -- end
    }
}
