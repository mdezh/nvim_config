require("bufferline").setup({
	options = {
		buffer_close_icon = "✗",
		mode = "buffers",
		offsets = {
			{
				filetype = "neo-tree",
				text = "File Explorer",
				separator = true,
				padding = 1,
			},
		},
		diagnostics = "nvim_lsp",
		indicator = {
			icon = "  ", -- this should be omitted if indicator style is not 'icon'
			style = "icon",
		},
		-- separator_style = "slope"
	},
})

vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<leader>X", ":BufferLinePickClose<CR>")
vim.keymap.set("n", "<leader><C-x>", ":BufferLineCloseOthers<CR>")
vim.keymap.set("n", "<leader>^", ":BufferLineSortByTabs<CR>")
