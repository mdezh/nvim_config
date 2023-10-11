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
vim.keymap.set("n", "<leader>B", ":BufferLinePick<CR>")

vim.keymap.set("n", "<leader>^X", ":BufferLinePickClose<CR>")
vim.keymap.set("n", "<leader>^x", ":bdelete<CR>") -- close current buffer
vim.keymap.set("n", "<leader>^o", ":BufferLineCloseOthers<CR>")
vim.keymap.set("n", "<leader>^p", ":BufferLineTogglePin<CR>")
vim.keymap.set("n", "<leader>^g", ":BufferLinePick<CR>")
vim.keymap.set("n", "<leader>^l", ":BufferLineCloseLeft<CR>")
vim.keymap.set("n", "<leader>^r", ":BufferLineCloseRight<CR>")
vim.keymap.set("n", "<leader>^st", ":BufferLineSortByTabs<CR>")
vim.keymap.set("n", "<leader>^se", ":BufferLineSortByExtension<CR>")
vim.keymap.set("n", "<leader>^sd", ":BufferLineSortByDirectory<CR>")
vim.keymap.set("n", "<leader>^sr", ":BufferLineSortByRelativeDirectory<CR>")
