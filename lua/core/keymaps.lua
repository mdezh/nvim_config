-- set leader key to space
vim.g.mapleader = " "

-- Русский язык (переключение по Ctrl-^ в режиме вставки)

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

-- use jk to exit insert or visual mode
-- vim.keymap.set({ "v", "i" }, "\\'", "<ESC>")
-- vim.keymap.set({ "v", "i" }, "\\э", "<ESC>")
vim.keymap.set({ "v", "i" }, "jk", "<ESC>")

-- unbind ins toggle
vim.keymap.set("i", "<Ins>", "<ESC>")

-- yank and paste clipboard
-- vim.keymap.set({ "n", "v", "x", "t" }, "<leader>y", '"+y')
-- vim.keymap.set({ "n", "v", "x", "t" }, "<leader>Y", '"*y')
-- vim.keymap.set({ "n", "t" }, "<leader>p", '"+p')
-- vim.keymap.set({ "n", "t" }, "<leader>P", '"*p')

-- do not yank on replace or delete
-- vim.keymap.set({ "v", "x" }, "<leader>p", '"_d"+p')
-- vim.keymap.set({ "v", "x" }, "<leader>P", '"_d"*p')
-- vim.keymap.set({ "n", "v", "x", "t" }, "<leader>d", '"_d')

-- copy default reg to/from system/mouse clipboard
-- vim.keymap.set({ "n", "v", "x" }, "<Leader>y", ':let @+=@"<CR>')
-- vim.keymap.set({ "n", "v", "x" }, "<Leader>p", ':let @"=@+<CR>')
-- vim.keymap.set({ "n", "v", "x" }, "<Leader>Y", ':let @*=@"<CR>')
-- vim.keymap.set({ "n", "v", "x" }, "<Leader>P", ':let @"=@*<CR>')

-- clear search highlights
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

-- delete single character without copying into register
vim.keymap.set("n", "x", '"_x')

-- increment/decrement numbers
-- vim.keymap.set("n", "<leader>+", "<C-a>") -- increment
-- vim.keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- navigate windows
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- move out of terminal
-- vim.keymap.set("t", "<C-j>", "<C-\\><C-n><C-w>j")
-- vim.keymap.set("t", "<C-k>", "<C-\\><C-n><C-w>k")
-- vim.keymap.set("t", "<C-h>", "<C-\\><C-n><C-w>h")
-- vim.keymap.set("t", "<C-l>", "<C-\\><C-n><C-w>l")

-- move line or v-block
vim.keymap.set("i", "<C-j>", "<Esc><cmd>m .+1<CR>==gi")
vim.keymap.set("i", "<C-k>", "<Esc><cmd>m .-2<CR>==gi")
vim.keymap.set("x", "J", ":m '>+1<CR>gv-gv", { noremap = true, silent = true })
vim.keymap.set("x", "K", ":m '<-2<CR>gv-gv", { noremap = true, silent = true })

-- stay in indent mode
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })

-- window management
-- vim.keymap.set("n", "<leader>wv", "<C-w>v") -- split window vertically
-- vim.keymap.set("n", "<leader>wh", "<C-w>s") -- split window horizontally
-- vim.keymap.set("n", "<leader>we", "<C-w>=") -- make split windows equal width & height
-- vim.keymap.set("n", "<leader>wx", ":close<CR>") -- close current split window
vim.keymap.set("n", "<leader>X", ":close<CR>") -- close current split window

-- tabs
-- vim.keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
-- vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
-- vim.keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
-- vim.keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab
vim.keymap.set("n", "<leader>Tt", ":tabnew<CR>") -- open new tab
vim.keymap.set("n", "<leader>Tx", ":tabclose<CR>") -- close current tab
vim.keymap.set("n", "<leader>T<Tab>", ":tabn<CR>") --  go to next tab
vim.keymap.set("n", "<leader>T<S-Tab>", ":tabp<CR>") --  go to previous tab

-- buffers
-- vim.keymap.set("n", "<leader>bo", ":new<CR>") -- open new buffer
-- vim.keymap.set("n", "<leader>bd", ":bdelete<CR>") -- close current buffer
-- vim.keymap.set("n", "<leader>bn", ":bn<CR>") --  go to next buffer
-- vim.keymap.set("n", "<leader>bp", ":bp<CR>") --  go to previous buffer
vim.keymap.set("n", "<leader>x", ":bdelete<CR>") -- close current buffer

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

-- Other
vim.keymap.set("n", "<leader>s", ":w<CR>")
vim.keymap.set("n", "<leader><C-s>", ":noa w<CR>")
vim.keymap.set("n", "<leader>S", ":wa<CR>")
vim.keymap.set("n", "<leader>q", ":qa<CR>")
vim.keymap.set("n", "<leader>Q", ":qa!<CR>")

vim.keymap.set("n", "<leader>pl", ":Lazy<CR>")

vim.keymap.set("v", "<F5>", ":Ray<CR>")
vim.keymap.set("n", "<F5>", "mmggVG:Ray<CR>`m")

vim.keymap.set({ "n", "v" }, "<leader>lt", ":GoTests<CR>")
vim.keymap.set({ "n", "v" }, "<leader>lT", ":GoTestsAll<CR>")
