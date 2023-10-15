return {
	"Djancyp/outline",
	config = function()
		require("outline").setup()

		vim.keymap.set("n", "<leader>C", ":BSOpen<CR>", { desc = "Manage buffers" })
	end,
}
