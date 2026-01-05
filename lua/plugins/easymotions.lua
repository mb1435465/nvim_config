return {
    "easymotion/vim-easymotion",
    config = function ()
        vim.keymap.set("n", "<leader>ew", "<Plug>(easymotion-bd-w)")
        vim.keymap.set("n", "<leader>ee", "<Plug>(easymotion-bd-e)")

        vim.g.EasyMotion_smartcase = 1
    end
}
