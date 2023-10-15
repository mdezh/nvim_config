return {
	"yanskun/gotests.nvim", -- auto generate boilerplate for Go tests
	ft = "go",
	config = function()
		require("gotests").setup()

		vim.keymap.set({ "n", "v" }, "<leader>lt", ":GoTests<CR>", { desc = "Generate Go test" })
		vim.keymap.set({ "n", "v" }, "<leader>lT", ":GoTestsAll<CR>", { desc = "Generate Go tests" })
	end,
}
