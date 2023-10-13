if vim.g.vscode then
	-- in VSCode extension

	require("core.options-vscode")
	require("core.keymaps-vscode")
else
	-- in ordinary Neovim

	-- Basic
	require("core.options")
	require("core.keymaps")
	require("core.plugins")
	require("core.colors")

	-- Plugins
	require("plugins.comment")
	require("plugins.neo-tree")
	require("plugins.treesitter")
	require("plugins.lazygit")
	require("plugins.lsp")
	require("plugins.cmp")
	require("plugins.mason")
	-- require("plugins.beacon")  -- commented as use defaults
	require("plugins.telescope")
	-- require("plugins.null_ls") -- commented as we try to work without it
	require("plugins.lualine")
	require("plugins.gitsigns")
	require("plugins.toggleterm")
	require("plugins.outline")
	require("plugins.autopairs")
	require("plugins.autotag")
	require("plugins.bufferline")
	require("plugins.dashboard")
	require("plugins.which-key")
	require("plugins.ray")
end
