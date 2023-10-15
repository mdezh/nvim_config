return {
	"sudoerwx/vim-ray-so-beautiful", -- make pictures with code
	config = function()
		vim.keymap.set("v", "<F5>", ":Ray<CR>")
		vim.keymap.set("n", "<F5>", "mmggVG:Ray<CR>`m")

		vim.g.ray_options = {
			theme = "midnight",
			background = "true",
			darkMode = "true",
			padding = "16",
			language = "auto",
		}
	end,
}
