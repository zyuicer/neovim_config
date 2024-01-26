local opt = { noremap = true, silent = true }
vim.g.mapleader = " "


local keymap = vim.keymap


keymap.set("n", "<C-l>", "<C-w>l", opt)
keymap.set("n", "<C-h>", "<C-w>h", opt)

keymap.set("n", "<C-j>", "<C-w>j", opt)
keymap.set("n", "<C-k>", "<C-w>k", opt)
keymap.set("n", "<C-s>", ":w<CR>", opt)

keymap.set("n", "j", [[v:count ? 'j' : 'gj']], { noremap = true, expr = true })
keymap.set("n", "k", [[v:count ? 'k' : 'gk']], { noremap = true, expr = true })

keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>", opt)



-- visual
keymap.set("v", ">", ">gv", opt)
keymap.set("v", "<", "<gv", opt)

-- move text up or down
--keymap.set("v", "<C-j>", ":m .+1<CR>==", opt)
-- keymap.set("v", "<C-k>", ":m .-2<CR>==", opt)

-- bufferline
keymap.set("n", "<leader>h", ":BufferLineCyclePrev<CR>", opt)
keymap.set("n", "<leader>l", ":BufferLineCycleNext<CR>", opt)
keymap.set("n", "<C-w>", ":BufferLinePickClose<CR>", opt)
keymap.set("n", "<C-c>", ":BufferLinePick<CR>", opt)
