return {
	"folke/persistence.nvim",
	event = "BufReadPre", -- 只在读取文件时加载插件
	config = function()
		require("persistence").setup({
			-- 你可以在这里进行个性化配置
			dir = vim.fn.expand(vim.fn.stdpath("config") .. "/session/"), -- 自定义会话文件的保存路径
		})
	end,
}
