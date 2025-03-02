return {
	"gen740/SmoothCursor.nvim",
	config = function()
		require("smoothcursor").setup({
			type = "exp", -- 也可以尝试 "exp" 或 "matrix" 等不同的动画类型
			speed = 40, -- 速度（越大越快）
			fancy = {
				enable = true, -- 开启 fancy 模式，支持拖尾效果
				head = { cursor = "", texthl = "SmoothCursor", linehl = nil },
				body = {
					{ cursor = "●", texthl = "SmoothCursorRed" },
					{ cursor = "•", texthl = "SmoothCursorOrange" },
					{ cursor = ".", texthl = "SmoothCursorYellow" },
				},
				tail = { cursor = nil, texthl = "SmoothCursor" },
			},
			autostart = true, -- 自动启动
		})
	end,
}
