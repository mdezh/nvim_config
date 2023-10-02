require("telescope").load_extension("lazygit")

vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>")
vim.keymap.set("n", "<leader>gt", ":Telescope lazygit<CR>")
vim.keymap.set("n", "<leader>gG", ":LazyGitCurrentFile<CR>")
vim.keymap.set("n", "<leader>ge", ":LazyGitConfig<CR>")
vim.keymap.set("n", "<leader>gl", ":LazyGitFilter<CR>")
vim.keymap.set("n", "<leader>gL", ":LazyGitFilterCurrentFile<CR>")
