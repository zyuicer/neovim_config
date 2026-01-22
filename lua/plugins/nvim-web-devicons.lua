return {
	-- 图标库：Material icon + web-devicons
	"nvim-tree/nvim-web-devicons",
	event = "VeryLazy",
	dependencies = {
		"echasnovski/mini.icons",
		"DaikyXendo/nvim-material-icon",
	},
	config = function()
		-- 初始化 devicons
		require("nvim-web-devicons").setup({
			color_icons = true,
			default = true,
			renderer = {
				icons = {
					show = {
						folder = true,
						folder_arrow = true,
						file = true,
					},
				},
			},
		})
	end,
}
