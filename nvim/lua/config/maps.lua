vim.g.mapleader = " "

-- local function map(mode, lhs, rhs)
-- 	vim.keymap.set(mode, lhs, rhs, { silent = true })
-- end

local map = vim.keymap.set
-- Save
-- map("n", "<C-s>", "<CMD>w<CR>")
map({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- Better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Quit
map("n", "<leader>q", "<CMD>q<CR>")

-- Exit insert mode
map("i", "jk", "<ESC>")

-- Move fasters
map({ "n", "v" }, "H", "0")
map({ "n", "v" }, "J", "5j")
map({ "n", "v" }, "K", "5k")
map({ "n", "v" }, "L", "$")

-- New Windows
map("n", "<leader>o", "<CMD>vsplit<CR>")
map("n", "<leader>p", "<CMD>split<CR>")

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

-- NeoTree
map("n", "<C-n>", "<CMD>Neotree toggle<CR>")
-- map("n", "<C-b>", "<CMD>Neotree buffers<CR>")

-- search and replace is a pain with a German keyboard layout
map({ "n" }, "<leader>sr", ":%s/", { desc = "Buffer search and replace" })

-- buffers
map("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<leader>bp", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
map("n", "<leader>bD", "<cmd>%bd|e#|bd#<cr>", { desc = "Close all but the current buffer" })
map("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Close buffer" })
map("n", "<leader><tab>", "<cmd>b#<cr>", { desc = "Previously openend Buffer" })
map("n", "<A-j>", ":m .+1<CR>==") -- move line up(n)
map("n", "<A-k>", ":m .-2<CR>==") -- move line down(n)
map("v", "<A-j>", ":m '>+1<CR>gv=gv") -- move line up(v)
map("v", "<A-k>", ":m '<-2<CR>gv=gv") -- move line down(v)

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files initial_mode=normal<cr>", { desc = "Fuzzy find files in cwd" })
map("n", "<leader>fr", "<cmd>Telescope oldfiles initial_mode=normal<cr>", { desc = "Fuzzy find recent files" })
map("n", "<leader>fs", "<cmd>Telescope live_grep initial_mode=normal<cr>", { desc = "Find string in cwd" })
map("n", "<leader>fx", "<cmd>Telescope trouble_telescope.open initial_mode=normal<cr>", { desc = "Find string in cwd" })
map(
	"n",
	"<leader>fc",
	"<cmd>Telescope grep_string initial_mode=normal<cr>",
	{ desc = "Find string under cursor in cwd" }
)
map("n", "<leader>fb", "<cmd>Telescope buffers initial_mode=normal<cr>", { desc = "Find buffers" })
map("n", "<leader>ft", "<cmd>TodoTelescope initial_mode=normal<cr>", { desc = "Find todos" })
