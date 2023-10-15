return {
	"akinsho/toggleterm.nvim", -- toggle (multiple) terminal window inside Neovim
	version = "*",
	config = function()
		require("toggleterm").setup({ open_mapping = [[<c-\>]] })

		function _G.set_terminal_keymaps()
			local opts = { buffer = 0 }
			-- vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
			vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
			vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
			vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
			vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
			vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
			vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
		end

		-- if you only want these mappings for toggle term use term://*toggleterm#* instead
		vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

		vim.keymap.set("n", "<leader>tf", ":ToggleTerm direction=float<CR>", { desc = "Open float terminal" })
		vim.keymap.set(
			"n",
			"<leader>th",
			":ToggleTerm direction=horizontal<CR>",
			{ desc = "Open terminal horizontally" }
		)
		vim.keymap.set(
			"n",
			"<leader>tv",
			":ToggleTerm direction=vertical size=40<CR>",
			{ desc = "Open terminal verically" }
		)
	end,
}
