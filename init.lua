if vim.g.vscode then
	-- in VSCode extension
else
	-- in ordinary Neovim

	-- Basic
	require("core.options")
	require("core.keymaps")
	require("core.plugins")
	require("core.colors")

	-- Plugins
	require("plugins.neotree")
	require("plugins.treesitter")
	require("plugins.lsp")
	require("plugins.cmp")
	require("plugins.mason")
	require("plugins.telescope")
	require("plugins.null_ls")
	require("plugins.lualine")
end
