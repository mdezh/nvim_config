return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("harpoon").setup({
			global_settings = {
				-- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
				save_on_toggle = false,

				-- saves the harpoon file upon every change. disabling is unrecommended.
				save_on_change = true,

				-- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
				enter_on_sendcmd = false,

				-- closes any tmux windows harpoon that harpoon creates when you close Neovim.
				tmux_autoclose_windows = false,

				-- filetypes that you want to prevent from adding to the harpoon list menu.
				excluded_filetypes = { "harpoon" },

				-- set marks specific to each git branch inside git repository
				mark_branch = false,

				-- enable tabline with harpoon marks
				tabline = false,
				tabline_prefix = "   ",
				tabline_suffix = "   ",
			},
		})

		require("telescope").load_extension("harpoon")

		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>Hx", require("harpoon.mark").add_file, { desc = "Mark file with harpoon" })
		keymap.set("n", "<leader>Hm", require("harpoon.ui").toggle_quick_menu, { desc = "Manipulate marks" })
		keymap.set("n", "<leader>Hn", require("harpoon.ui").nav_next, { desc = "Go to next harpoon mark" })
		keymap.set("n", "<leader>Hp", require("harpoon.ui").nav_prev, { desc = "Go to previous harpoon mark" })
		keymap.set("n", "<leader>Hs", ":Telescope harpoon marks<CR>", { desc = "Select mark by Telescope" })
	end,
}
