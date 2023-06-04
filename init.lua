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

keymap.set("n", "j", [[v:count ? 'j' : 'gj']], { noremap = true, expr = true })
keymap.set("n", "k", [[v:count ? 'k' : 'gk']], { noremap = true, expr = true })

-- lazyNvim
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

require("lazy").setup({
})
