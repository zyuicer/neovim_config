--[[ 美化文本块的 区域间隔线 ]]
return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {},
	config = function()
		require("ibl").setup({
			indent = {
				char = "│", -- 缩进线字符
			},
			scope = {
				enabled = true, -- 启用作用域可视化
			},
		})
	end,
}
