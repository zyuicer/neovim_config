return {
	-- 图标库：Material icon + web-devicons
	"nvim-tree/nvim-web-devicons",
	event = "VeryLazy",
	config = function()
		-- 初始化 devicons
		require("nvim-web-devicons").setup({
			override = {
				zsh = {
					icon = "",
					color = "#428850",
					cterm_color = "65",
					name = "Zsh",
				},
			},
			color_icons = true,
			default = true,
		})
	end,
}
