return {
	"nvim-neorg/neorg",
	dependencies = { "nvim-lua/plenary.nvim" },
	lazy = false,
	version = "*",
	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {}, -- 加载默认模块
				["core.concealer"] = {}, -- 美化 UI
				["core.dirman"] = { -- 目录管理
					config = {
						workspaces = {
							notes = "~/notes",
							work = "~/work",
						},
						default_workspace = "notes",
					},
				},
			},
		})
	end,
}
