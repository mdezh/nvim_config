local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>c", builtin.current_buffer_fuzzy_find, {})
vim.keymap.set("n", "<leader>r", builtin.oldfiles, {})
vim.keymap.set("n", "<leader>b", builtin.buffers, {})

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fr", builtin.oldfiles, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fc", builtin.current_buffer_fuzzy_find, {})
vim.keymap.set("n", "<leader>fw", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>fm", builtin.man_pages, {})

vim.keymap.set("n", "<leader>vc", builtin.command_history, {})
vim.keymap.set("n", "<leader>vC", builtin.commands, {})
vim.keymap.set("n", "<leader>vs", builtin.search_history, {})
vim.keymap.set("n", "<leader>vS", builtin.colorscheme, {})
vim.keymap.set("n", "<leader>vm", builtin.marks, {})
vim.keymap.set("n", "<leader>vj", builtin.jumplist, {})
vim.keymap.set("n", "<leader>vl", builtin.loclist, {})
vim.keymap.set("n", "<leader>vo", builtin.vim_options, {})
vim.keymap.set("n", "<leader>vr", builtin.registers, {})
vim.keymap.set("n", "<leader>vq", builtin.quickfix, {})
vim.keymap.set("n", "<leader>vQ", builtin.quickfixhistory, {})

vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
vim.keymap.set("n", "<leader>gb", builtin.git_branches, {})
vim.keymap.set("n", "<leader>gc", builtin.git_commits, {})
vim.keymap.set("n", "<leader>gs", builtin.git_status, {})

vim.keymap.set("n", "<leader>lu", builtin.lsp_references, {})
vim.keymap.set("n", "<leader>lS", builtin.lsp_document_symbols, {})
vim.keymap.set("n", "<leader>lw", builtin.lsp_workspace_symbols, {})
vim.keymap.set("n", "<leader>lW", builtin.lsp_dynamic_workspace_symbols, {})
vim.keymap.set("n", "<leader>ld", builtin.diagnostics, {})
vim.keymap.set("n", "<leader>l<C-s>", builtin.treesitter, {})
vim.keymap.set("n", "<leader>lp", builtin.planets, {})

vim.keymap.set("n", "gr", builtin.lsp_references, { noremap = true, silent = true })
vim.keymap.set("n", "gd", builtin.lsp_definitions, { noremap = true, silent = true })
vim.keymap.set("n", "gt", builtin.lsp_type_definitions, { noremap = true, silent = true })

vim.keymap.set("n", "<leader>*", builtin.grep_string, {})
