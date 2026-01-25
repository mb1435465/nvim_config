return {
	"nanotech/jellybeans.vim",
	config = function()
		vim.g.jellybeans_overrides = {
			background = {
				guibg = "none",
			},
			gutter = {
				guibg = "none",
			},
			signcolumn = {
				guibg = "none",
			},
			pmenu = {
				guibg = "none",
			},
			cursorlinenr = {
				guifg = "f5830b",
			},
		}
		vim.cmd.background = "dark"
		vim.cmd.colorscheme("jellybeans")
	end,
}
