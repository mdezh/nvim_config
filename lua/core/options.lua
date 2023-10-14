-- line number
vim.opt.relativenumber = true
vim.opt.number = true

-- tabs & indentication
vim.opt.tabstop = 4 -- 4 spaces for tabs (prettier default)
vim.opt.shiftwidth = 4 -- 4 spaces for indent width
vim.opt.expandtab = true -- expand tab to spaces
vim.opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
vim.opt.wrap = true -- enable line wrapping
vim.opt.linebreak = true

-- search settings
vim.opt.ignorecase = true -- ignore case when searching
vim.opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
vim.opt.cursorline = true -- highlight the current cursor line

-- apperance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
vim.opt.termguicolors = true
vim.opt.background = "dark" -- colorschemes that can be light or dark will be made dark
vim.opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
vim.opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
vim.opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
vim.opt.splitright = true -- split vertical window to the right
vim.opt.splitbelow = true -- split horizontal window to the bottom

vim.opt.iskeyword:append("-") -- consider string-string as whole word

-- spelling
vim.opt.spelllang = { "en_us", "ru" } -- Словари рус eng
vim.opt.spell = true

-- turn off swapfile
-- opt.swapfile = false

-- redundancy
vim.opt.undofile = true -- keep undo history between sessions
vim.opt.undodir = vim.fn.expand("~/.local/share/nvim/undo/") -- keep undo files out of file dir
vim.opt.directory = vim.fn.expand("~/.local/share/nvim/swp/") -- keep unsaved changes away from file dir
vim.opt.backupdir = vim.fn.expand("~/.local/share/nvim/backup/") -- backup also should not go to git
