return {
	"rmagatti/auto-session", -- save/restore sessions
	config = function()
		local auto_session = require("auto-session")

		auto_session.setup({
			log_level = "error",

			cwd_change_handling = {
				restore_upcoming_session = true, -- already the default, no need to specify like this, only here as an example
				pre_cwd_changed_hook = nil, -- already the default, no need to specify like this, only here as an example
				post_cwd_changed_hook = function() -- example refreshing the lualine status line _after_ the cwd changes
					require("lualine").refresh() -- refresh lualine so the new session name is displayed in the status bar
				end,
			},

			auto_session_create_enabled = true,
			auto_save_enabled = true,
			auto_restore_enabled = false,
			auto_session_suppress_dirs = {
				"/",
				"~/",
				"~/projects/",
				"~/Dev/",
				"~/Downloads",
				"~/Documents",
				"~/Desktop/",
			},
		})

		local keymap = vim.keymap

		keymap.set("n", "<leader>wr", ":SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
		keymap.set("n", "<leader>ws", ":SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
	end,
}
