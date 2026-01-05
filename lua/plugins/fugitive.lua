return {
    "tpope/vim-fugitive",
    config = function ()
        vim.keymap.set("n", "<leader>gg", ":Git<CR>")
        vim.keymap.set("n", "<leader>gd", ":Gdiffsplit<CR>")
        vim.keymap.set("n", "<leader>gl", ":Git blame<CR>")
        vim.keymap.set("n", "<leader>gm", ":Git mergetool<CR>")

        vim.opt.diffopt:append("algorithm:patience")
        vim.opt.diffopt:append("indent-heuristic")

        vim.keymap.set("n", "<leader>gj", ":diffget //3<CR>")
        vim.keymap.set("n", "<leader>gf", ":diffget //2<CR>")

        vim.cmd([[
            function! ConflictStats()
                let l:conflict_pattern = "^<<<<<<< "
                let l:conflicts = search(l:conflict_pattern, 'n')
                echo "Remaining conflicts: " . l:conflicts
            endfunction
        ]])
        vim.keymap.set("n", "<leader>go", ":call ConflictStats()<CR>")
    end
}
