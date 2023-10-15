return {
	"windwp/nvim-ts-autotag", -- add pair tags in html, etc.
	config = function()
		require("nvim-ts-autotag").setup()

		-- what does it mean?
		vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
			underline = true,
			virtual_text = { spacing = 5, severity_limit = "Warning" },
			update_in_insert = true,
		})
	end,
}
