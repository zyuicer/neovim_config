local config = {}
local M = {}

-- 获取当前文件夹路径
local path = debug.getinfo(1, "S").source:sub(2)
local dir = vim.fn.fnamemodify(path, ":h")

local configs = {}

-- 遍历 lsp 目录下的所有 .lua 文件
for _, file in ipairs(vim.fn.globpath(dir, "*.lua", false, true)) do
	local name = vim.fn.fnamemodify(file, ":t:r")
	if name ~= "init" then
		local ok, mod = pcall(require, "lsp." .. name)
		if ok and type(mod) == "table" then
			configs[name] = vim.lsp.config(name, mod)
		else
			vim.notify("⚠️ 无法加载 LSP 配置: " .. name, vim.log.levels.WARN)
		end
	end
end

-- 一次性启用所有 LSP
vim.lsp.enable(configs)

return M
