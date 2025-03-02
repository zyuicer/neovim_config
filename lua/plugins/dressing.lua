return {
	"stevearc/dressing.nvim",
	config = function()
		require("dressing").setup({
			input = {
				default_prompt = "Input: ", -- 设置默认提示文本
			},
			select = {
				backend = { "telescope", "fzf" }, -- 使用 telescope 或 fzf 作为选择器
			},
		})
	end,
}
