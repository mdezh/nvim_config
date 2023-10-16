return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	config = function()
		require("bufferline").setup({
			options = {
				buffer_close_icon = "✗",
				mode = "buffers",
				-- mode = "tabs",
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
				-- separator_style = "slant",
				-- separator_style = "slope"
			},
		})

		vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
		vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>")
		vim.keymap.set("n", "<leader><C-b>", ":BufferLinePick<CR>", { desc = "Pick buffer" })

		vim.keymap.set("n", "<leader>Lx", ":BufferLinePickClose<CR>", { desc = "Pick and close buffer" })
		vim.keymap.set("n", "<leader>LX", ":bdelete<CR>", { desc = "Close buffer" })
		vim.keymap.set("n", "<leader>Lo", ":BufferLineCloseOthers<CR>", { desc = "Close other buffers" })
		vim.keymap.set("n", "<leader>Lp", ":BufferLineTogglePin<CR>", { desc = "Pin/unpin buffer" })
		vim.keymap.set("n", "<leader>Lb", ":BufferLinePick<CR>", { desc = "Pick buffer" })
		vim.keymap.set("n", "<leader>Ll", ":BufferLineCloseLeft<CR>", { desc = "Close left buffer" })
		vim.keymap.set("n", "<leader>Lr", ":BufferLineCloseRight<CR>", { desc = "Close right buffer" })
		vim.keymap.set("n", "<leader>Lst", ":BufferLineSortByTabs<CR>", { desc = "Sort by tabs" })
		vim.keymap.set("n", "<leader>Lse", ":BufferLineSortByExtension<CR>", { desc = "Sort by extension" })
		vim.keymap.set("n", "<leader>Lsd", ":BufferLineSortByDirectory<CR>", { desc = "Sort by directory" })
		vim.keymap.set(
			"n",
			"<leader>Lsr",
			":BufferLineSortByRelativeDirectory<CR>",
			{ desc = "Sort by relative directory" }
		)
	end,
}
