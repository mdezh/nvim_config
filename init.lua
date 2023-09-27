if vim.g.vscode then
	-- in VSCode extension

	-- jj as <Esc> in visual mode (for insert mode use keybindings in vscode)
	vim.keymap.set("v", "jj", "<ESC>")
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
	require("plugins.autotag")
	require("plugins.bufferline")
	require("plugins.dashboard")
	require("plugins.which-key")
end
