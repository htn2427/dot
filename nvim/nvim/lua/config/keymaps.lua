local map = vim.keymap.set

-- Save
map({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- Buffers
map("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<leader>bp", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
map("n", "<C-n>", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<C-b>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
map("n", "<leader>bD", "<cmd>%bd|e#|bd#<cr>", { desc = "Close all but the current buffer" })
map("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Close buffer" })
map("n", "<leader>bt", "<cmd>b#<cr>", { desc = "Previously opened Buffer" })

-- Move line
map({ "v" }, "<C-j>", ":m '>+1<CR>gv=gv", { desc = "Move Down" })
map({ "v" }, "<C-k>", ":m '<-2<CR>gv=gv", { desc = "Move Up" })
map({ "n", "v" }, "<S-h>", "0", { desc = "Move Down" })
map({ "n", "v" }, "<S-j>", "5j", { desc = "Move Down" })
map({ "n", "v" }, "<S-k>", "5k", { desc = "Move Up" })
map({ "n", "v" }, "<S-l>", "$", { desc = "Move Up" })

-- Search and replace is a pain with a German keyboard layout
map({ "n" }, "<leader>rr", ":%s/", { desc = "Buffer search and replace" })

-- Better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Quit
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Close file" })

-- Exit insert mode
map("i", "jk", "<ESC>", { desc = "Normal mode" })
map("i", "kj", "<ESC>", { desc = "Normal mode" })
map("i", "jj", "<ESC>", { desc = "Normal mode" })
map("i", "kk", "<ESC>", { desc = "Normal mode" })

-- New Windows
-- map("n", "<leader>o", "<CMD>vsplit<CR>")
-- map("n", "<leader>p", "<CMD>split<CR>")

-- Window Navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")

-- Resize Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")

-- unmap
map({ "i", "v", "n", "s" }, "<C-z>", "<nop>")
-- map("v", "<S-h>", "<nop>")
-- map("v", "<S-j>", "<nop>")
-- map("v", "<S-k>", "<nop>")
-- map("v", "<S-l>", "<nop>")

-- tab
map("n", "<leader>tab", ":tabnext<cr>")
