if vim.g.vscode then
	-- in VSCode extension
	require("cfg.vscode")
else
	-- in ordinary Neovim
	require("cfg.core")
	require("cfg.lazy")
end
