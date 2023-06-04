local set = vim.o

set.number = true
set.clipboard = "unnamed"
set.relativenumber = true

-- yy text color
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
	pattern = { "*" },
	callback = function()
		vim.highlight.on_yank({
			timeout = 300,
		})
	end,
})

-- keybindings
local opt = { noremap = true, silent = true }

local keymap = vim.keymap

keymap.set("n", "<C-l>", "<C-w>l", opt)
keymap.set("n", "<C-h>", "<C-w>h", opt)

keymap.set("n", "<C-j>", "<C-w>j", opt)
keymap.set("n", "<C-k>", "<C-w>k", opt)

