return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "truncate " },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
		})

		telescope.load_extension("fzf")

		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<leader>c", builtin.current_buffer_fuzzy_find, { desc = "Find in buffer" })
		vim.keymap.set("n", "<leader>r", builtin.oldfiles, { desc = "Find recent files" })
		vim.keymap.set("n", "<leader>b", builtin.buffers, { desc = "Find buffer" })
		vim.keymap.set("n", "<leader>d", builtin.git_status, { desc = "Diff via Telescope" })
		vim.keymap.set("n", "<leader>*", builtin.grep_string, { desc = "Find string under cursor in cwd" })

		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files in cwd" })
		vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Find recent files" })
		vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Git files" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffer" })
		vim.keymap.set("n", "<leader>fc", builtin.current_buffer_fuzzy_find, { desc = "Find in buffer" })
		vim.keymap.set("n", "<leader>fw", builtin.live_grep, { desc = "Find string in cwd" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find help" })
		vim.keymap.set("n", "<leader>fm", builtin.man_pages, { desc = "Find man page" })

		vim.keymap.set("n", "<leader>vc", builtin.command_history, { desc = "Command history" })
		vim.keymap.set("n", "<leader>vC", builtin.commands, { desc = "Available commands" })
		vim.keymap.set("n", "<leader>vs", builtin.search_history, { desc = "Search history" })
		vim.keymap.set("n", "<leader>vS", builtin.colorscheme, { desc = "Color schemes" })
		vim.keymap.set("n", "<leader>vm", builtin.marks, { desc = "Marks" })
		vim.keymap.set("n", "<leader>vj", builtin.jumplist, { desc = "Jumplist" })
		vim.keymap.set("n", "<leader>vl", builtin.loclist, { desc = "Locklist" })
		vim.keymap.set("n", "<leader>vo", builtin.vim_options, { desc = "Options" })
		vim.keymap.set("n", "<leader>vr", builtin.registers, { desc = "Registers" })
		vim.keymap.set("n", "<leader>vq", builtin.quickfix, { desc = "Quick fix" })
		vim.keymap.set("n", "<leader>vQ", builtin.quickfixhistory, { desc = "Quick fix history" })

		vim.keymap.set("n", "<leader>gf", builtin.git_files, { desc = "Git files" })
		vim.keymap.set("n", "<leader>gb", builtin.git_branches, { desc = "Git branches" })
		vim.keymap.set("n", "<leader>gc", builtin.git_commits, { desc = "Git commits" })
		vim.keymap.set("n", "<leader>gs", builtin.git_status, { desc = "Git status" })

		vim.keymap.set("n", "<leader>lR", builtin.lsp_references, { desc = "References" })
		vim.keymap.set("n", "<leader>ls", builtin.lsp_document_symbols, { desc = "Document symbols" })
		vim.keymap.set("n", "<leader>lw", builtin.lsp_workspace_symbols, { desc = "Workspace symbols" })
		vim.keymap.set("n", "<leader>lW", builtin.lsp_dynamic_workspace_symbols, { desc = "Dynamic workspace symbols" })
		vim.keymap.set("n", "<leader>lS", builtin.treesitter, { desc = "Treesitter symbols" })
		vim.keymap.set("n", "<leader>lp", builtin.planets, { desc = "Planets" })
		vim.keymap.set("n", "<leader>ld", function()
			builtin.diagnostics({ bufnr = 0 })
		end, { desc = "Diagnostics" })

		vim.keymap.set("n", "gr", builtin.lsp_references, { desc = "LSP References" })
		vim.keymap.set("n", "gd", builtin.lsp_definitions, { desc = "LSP Definitions" })
		vim.keymap.set("n", "gt", builtin.lsp_type_definitions, { desc = "LSP Type definitions" })
		vim.keymap.set("n", "gi", builtin.lsp_implementations, { desc = "LSP Implementations" })
	end,
}
