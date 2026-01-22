return {
	"nvim-treesitter/nvim-treesitter-context",
	config = function()
		require("treesitter-context").setup({
			enable = true,
			multiwindow = false,
			max_lines = 1,
			min_window_height = 0,
			line_numbers = true,
			multiline_threshold = 2,
			trim_scope = "outer",
			mode = "cursor",
			separator = nil, -- 不用分隔符，而是用阴影
			zindex = 20,
			on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
		})
		-- 设置 context 背景色（可选）
		vim.api.nvim_set_hl(0, "TreesitterContext", {
			bg = "#bbbbbb", -- 与 Normal 不同即可
		})

		-- 设置底部阴影线
		vim.api.nvim_set_hl(0, "TreesitterContextBottom", {
			underline = true,
			sp = "#666666",
			bold = true,
		})
	end,
}
