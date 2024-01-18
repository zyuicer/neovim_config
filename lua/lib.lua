M = {}

function M.safeRequire(module)
	local success, loaderModule = pcall(require, module)
	if success then
		return loaderModule
	end
	return nil
end

return M
