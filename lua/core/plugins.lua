local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
	-- themes
	{ "navarasu/onedark.nvim" },
	{ "rebelot/kanagawa.nvim" },
	-- { "savq/melange-nvim" },
	-- { "rktjmp/lush.nvim" },
	-- { "mcchrish/zenbones.nvim", depencencies = { "rktjmp/lush.nvim" } },
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	-- other
	{ "terrortylor/nvim-comment" }, -- CommentToggle
	{
		"nvim-neo-tree/neo-tree.nvim", -- manage file system and other tree like structures
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			"s1n7ax/nvim-window-picker",
		},
	},
	{
		"nvim-treesitter/nvim-treesitter", -- syntax highlighting, parsing
		build = ":TSUpdate",
	},
	{
		"kdheepak/lazygit.nvim", -- LazyGit inside nvim
		-- optional for floating window border decoration
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"nvim-lua/plenary.nvim",
		},
	},
	{
		"folke/flash.nvim", -- code search and navigation
		event = "VeryLazy",
		---@type Flash.Config
		opts = { modes = { char = { jump_labels = true } } },
	        -- stylua: ignore
	        keys = {
	            -- { "s", mode = { "n", "o", "x" }, function() require("flash").jump() end, desc = "Flash" },
	            { "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
	            { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
	            { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
	            { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
	        },
	},
	----- LSP & completion -----
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },
	{ "hrsh7th/nvim-cmp" },
	----------------------------
	{
		"yanskun/gotests.nvim", -- auto generate boilerplate for Go tests
		ft = "go",
		config = function()
			require("gotests").setup()
		end,
	},
	{ "rainbowhxch/beacon.nvim" }, -- show cursor position after jump, etc.
	{ "williamboman/mason.nvim" }, -- install and manage LSP servers, linters, formatters, etc.
	{
		"nvim-telescope/telescope.nvim", -- fuzzy finder over lists
		tag = "0.1.3",
		dependencies = { "nvim-lua/plenary.nvim" }, -- lua helpers
	},
	-- {
	-- 	"jose-elias-alvarez/null-ls.nvim", -- use Neovim as a language server to inject LSP diagnostics, code actions, etc.
	-- 	ft = "go",
	-- },
	{
		"nvim-lualine/lualine.nvim", -- statusline
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"linrongbin16/lsp-progress.nvim",
		},
	},
	{
		"linrongbin16/lsp-progress.nvim", -- LSP progress status
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lsp-progress").setup()
		end,
	},
	{ "lewis6991/gitsigns.nvim" }, -- git decorations
	-- { "f-person/git-blame.nvim" }, -- git blame line, now use from gitsigns
	{ "akinsho/toggleterm.nvim", version = "*", config = true }, -- toggle (multiple) terminal window inside Neovim
	{ "Djancyp/outline" }, -- ls for buffers: jump, delete, etc... now via <S-c>
	{
		"windwp/nvim-autopairs", -- auto insert pairs for brackets, etc.
		event = "InsertEnter",
		opts = {}, -- this is equalent to setup({}) function
	},
	{ "windwp/nvim-ts-autotag" }, -- use treesitter to autoclose and autorename html tags
	{ "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" }, -- upper line with "tabs" for buffers
	{
		"glepnir/dashboard-nvim", -- dashboard on start
		event = "VimEnter",
		-- config = function()
		-- 	require("dashboard").setup({
		-- 		-- config
		-- 	})
		-- end,
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	},
	{
		"folke/which-key.nvim", -- hints for keybindings
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
		},
	},
	{ "hrsh7th/cmp-nvim-lsp-signature-help" }, -- nvim-cmp source for displaying function signatures with the current parameter emphasized
	{ "hrsh7th/vim-vsnip" }, -- VSCode(LSP)'s snippet feature in vim/nvim
	{ "hrsh7th/vim-vsnip-integ" }, -- vim-vsnip integrations to other plugins
	{ "sudoerwx/vim-ray-so-beautiful" }, -- make pictures with code
})
