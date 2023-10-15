return {
	"kdheepak/lazygit.nvim", -- LazyGit inside nvim
	-- optional for floating window border decoration
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("telescope").load_extension("lazygit")

		vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>", { desc = "LazyGit" })
		vim.keymap.set("n", "<leader>gt", ":Telescope lazygit<CR>", { desc = "LazyGit Telescope" })
		vim.keymap.set("n", "<leader>gG", ":LazyGitCurrentFile<CR>", { desc = "LazyGit current file" })
		vim.keymap.set("n", "<leader>ge", ":LazyGitConfig<CR>", { desc = "LazyGit config" })
		vim.keymap.set("n", "<leader>gl", ":LazyGitFilter<CR>", { desc = "LazyGit filter" })
		vim.keymap.set("n", "<leader>gL", ":LazyGitFilterCurrentFile<CR>", { desc = "LazyGit filter current file" })
	end,
}
