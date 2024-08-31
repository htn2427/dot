-- This file is automatically loaded by plugins.core
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local opt = vim.opt

-- security
opt.modelines = 0

-- hide buffers, not close them
opt.hidden = true

-- maintain undo history between sessions
-- opt.swapfile = false
-- opt.undofile = true
-- opt.undodir = vim.fn.stdpath("data") .. "/undo"

-- scroll bounds
vim.o.scrolloff = 13

--copy clipboard - use system clipboard as default register
opt.clipboard = "unnamedplus"

-- ipad scrolling
opt.mouse = "a"

-- fuzzy find
opt.path:append("**")

-- lazy file name tab completion
opt.wildmode = "list:longest,list:full"
opt.wildmenu = true
opt.wildignorecase = true

-- ignore files vim doesnt use
opt.wildignore:append(".git,.hg,.svn")
opt.wildignore:append(".aux,*.out,*.toc")
opt.wildignore:append(".o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class")
opt.wildignore:append(".ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp")
opt.wildignore:append(".avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg")
opt.wildignore:append(".mp3,*.oga,*.ogg,*.wav,*.flac")
opt.wildignore:append(".eot,*.otf,*.ttf,*.woff")
opt.wildignore:append(".doc,*.pdf,*.cbr,*.cbz")
opt.wildignore:append(".zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb")
opt.wildignore:append(".swp,.lock,.DS_Store,._*")
opt.wildignore:append(".,..")

-- case insensitive search
opt.ignorecase = true
opt.smartcase = true
opt.infercase = true

-- make backspace behave in a sane manner
opt.backspace = "indent,eol,start"

-- searching
opt.hlsearch = true
opt.incsearch = true
opt.inccommand = "split"

-- use indents of 2
opt.shiftwidth = 2

-- tabs are tabs
opt.expandtab = false

-- an indentation every 2 columns
opt.tabstop = 2

-- let backspace delete indent
opt.softtabstop = 2

-- enable auto indentation
opt.autoindent = true
opt.number = true
vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("highlight_yank", {}),
	desc = "Highlight selection on yank",
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 250 })
	end,
})
opt.wrap = false
