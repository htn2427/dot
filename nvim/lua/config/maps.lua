vim.g.mapleader = " "

local function map(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { silent = true })
end

-- Save
map("n", "<C-s>", "<CMD>w<CR>")

-- Quit
map("n", "<leader>q", "<CMD>q<CR>")

-- Exit insert mode
map("i", "jk", "<ESC>")

-- New Windows
map("n", "<leader>o", "<CMD>vsplit<CR>")
map("n", "<leader>p", "<CMD>split<CR>")

-- Window Navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

-- Resize Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")

-- Hop
map("n", "<leader>w", "<cmd>HopWordAC<CR>")
map("n", "<leader>b", "<cmd>HopWordBC<CR>")
map("n", "<leader>j", "<cmd>HopLineAC<CR>")
map("n", "<leader>k", "<cmd>HopLineBC<CR>")
map("n", "<C-f>", "<cmd>HopPattern<CR>")

-- NeoTree
map("n", "<leader>n", "<CMD>Neotree toggle<CR>")
map("n", "<leader>bf", "<CMD>Neotree buffers<CR>")

-- LSP
-- map("n", "gk", vim.lsp.buf.hover)
-- map("n", "gd", vim.lsp.buf.definition)
-- map("n", "gD", vim.lsp.buf.declaration)
-- map("n", "gr", vim.lsp.buf.references)
-- map("n", "gI", vim.lsp.buf.implementation)
-- map("n", "gs", vim.lsp.buf.signature_help)
-- map("n", "ga", vim.lsp.buf.code_action)
-- map("n", "gf", vim.lsp.buf.format)
