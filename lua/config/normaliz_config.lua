local set = vim.o
local opt = vim.opt

vim.api.nvim_create_autocmd({ "InsertLeave", "WinEnter" }, {
	callback = function()
		vim.wo.cursorline = true
	end,
})

vim.api.nvim_create_autocmd({ "InsertEnter", "WinLeave" }, {
	callback = function()
		vim.wo.cursorline = false
	end,
})


vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		local ok, gs = pcall(require, "gitsigns")
		if ok then
			gs.toggle_current_line_blame(true)
		end
	end,
})

local o_options = {
	tabstop = 2,
	softtabstop = 2,
	shiftwidth = 2,
	number = true,
	clipboard = "unnamed",
	relativenumber = true,
}

for k, v in pairs(o_options) do
	set[k] = v
end

-- options
-- vim.opt.cursorline = true

-- error dispatch
vim.diagnostic.config({
	virtual_text = {
		spacing = 2,
		severity = { min = vim.diagnostic.severity.WARN },
	},
})

-- toggleterm
vim.api.nvim_create_autocmd("TermOpen", {
	pattern = "term://*",
	callback = function()
		vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { buffer = true, silent = true })
	end,
})
