-- set leader key to space
vim.g.mapleader = " "

-- Русский язык

vim.cmd("set keymap=russian-jcukenwin")
vim.cmd("set iminsert=0")
vim.cmd("set imsearch=0")

----------------------
-- General Keymaps
----------------------

-- soft wrap remap
local expr_opts = { noremap = true, expr = true, silent = true }
vim.keymap.set({ "n", "v" }, "j", "v:count == 0 ? 'gj' : 'j'", expr_opts)
vim.keymap.set({ "n", "v" }, "k", "v:count == 0 ? 'gk' : 'k'", expr_opts)
vim.keymap.set({ "n", "v" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", expr_opts)
vim.keymap.set({ "n", "v" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", expr_opts)

-- jk as <Esc> in visual mode (for insert mode use keybindings in vscode)
vim.keymap.set("v", "jk", "<ESC>")

-- unbind ins toggle
vim.keymap.set("i", "<Ins>", "<ESC>")

-- clear search highlights
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

-- delete single character without copying into register
vim.keymap.set("n", "x", '"_x')

-- increment/decrement numbers
vim.keymap.set("n", "<leader>+", "<C-a>") -- increment
vim.keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- move line or v-block
vim.keymap.set("i", "<C-j>", "<Esc><cmd>m .+1<CR>==gi")
vim.keymap.set("i", "<C-k>", "<Esc><cmd>m .-2<CR>==gi")
vim.keymap.set("x", "J", ":m '>+1<CR>gv-gv", { noremap = true, silent = true })
vim.keymap.set("x", "K", ":m '<-2<CR>gv-gv", { noremap = true, silent = true })

-- stay in indent mode
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })

-- shift arrow like gui
vim.keymap.set("n", "<S-Up>", "v<Up>")
vim.keymap.set("n", "<S-Down>", "v<Down>")
vim.keymap.set("n", "<S-Left>", "v<Left>")
vim.keymap.set("n", "<S-Right>", "v<Right>")
vim.keymap.set("v", "<S-Up>", "<Up>")
vim.keymap.set("v", "<S-Down>", "<Down>")
vim.keymap.set("v", "<S-Left>", "<Left>")
vim.keymap.set("v", "<S-Right>", "<Right>")
vim.keymap.set("i", "<S-Up>", "<Esc>v<Up>")
vim.keymap.set("i", "<S-Down>", "<Esc>v<Down>")
vim.keymap.set("i", "<S-Left>", "<Esc>v<Left>")
vim.keymap.set("i", "<S-Right>", "<Esc>v<Right>")

-- copy paste like gui
vim.keymap.set("v", "<C-c>", '"+y<Esc>i')
vim.keymap.set("v", "<C-x>", '"+d<Esc>i')
vim.keymap.set("i", "<C-v>", '"+pi')
vim.keymap.set("i", "<C-v>", '<Esc>"+pi', { noremap = true, silent = true })
vim.keymap.set("i", "<C-z>", "<Esc>ui", { noremap = true, silent = true })
vim.keymap.set("i", "<C-z>", "<Esc>ui", { noremap = true, silent = true })
vim.keymap.set({ "i", "v", "x", "t" }, "<C-a>", "<C-\\><C-n>ggVG", { noremap = true, silent = true })
