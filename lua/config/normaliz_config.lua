local set = vim.o
local opt = vim.opt

opt.cursorline = true

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
