--[[ 美化 :input ui ]]
return {
	"stevearc/dressing.nvim",
	enabled = true, -- 已经有了 snacks基本美化配置包不需要单独配置
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
