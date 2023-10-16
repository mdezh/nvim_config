return {
	"yanskun/gotests.nvim", -- auto generate boilerplate for Go tests
	ft = "go",
	config = function()
		require("gotests").setup()

		vim.keymap.set({ "n", "v" }, "<leader>ltt", ":GoTests<CR>", { desc = "Generate test for current function" })
		vim.keymap.set(
			{ "n", "v" },
			"<leader>lta",
			":GoTestsAll<CR>",
			{ desc = "Generate tests for all functions in the buffer" }
		)
	end,
}
