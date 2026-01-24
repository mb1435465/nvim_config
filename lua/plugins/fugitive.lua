return {
	"tpope/vim-fugitive",
	config = function()
		vim.keymap.set("n", "<leader>gg", vim.cmd.Git)
		vim.keymap.set("n", "<leader>gD", vim.cmd.Gdiffsplit)
		vim.keymap.set("n", "<leader>gB", function()
			vim.cmd.Git("blame")
		end)
		vim.keymap.set("n", "<leader>gm", function()
			vim.cmd.Git("mergetool")
		end)
		vim.keymap.set("n", "<leader>gc", function()
			vim.cmd.Git("commit")
		end)
		vim.keymap.set("n", "<leader>ga", function()
			vim.cmd.Git("add --all")
		end)
		vim.keymap.set("n", "<leader>gd", function()
			vim.cmd.Git("diff")
		end)
		vim.keymap.set("n", "<leader>gl", function()
			vim.cmd.Git("log")
		end)
		vim.keymap.set("n", "<leader>gp", function()
			vim.cmd.Git("push")
		end)
		vim.keymap.set("n", "<leader>gP", function()
			vim.cmd.Git("pull --rebase")
		end)
		vim.keymap.set("n", "<leader>gA", function()
			vim.cmd.Git("add " .. vim.fn.expand("%"))
		end)

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
	end,
}
