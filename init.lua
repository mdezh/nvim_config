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
	require("plugins.gitsigns")
	require("plugins.toggleterm")
	require("plugins.outline")
	require("plugins.autopairs")
	require("plugins.comment")
	require("plugins.autotag")
	require("plugins.bufferline")
end
