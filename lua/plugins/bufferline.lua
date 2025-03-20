--[[ 记录打开的文件tabs ]]
vim.opt.termguicolors = true
return {
	"akinsho/bufferline.nvim",
	dependencies = "nvim-tree/nvim-web-devicons",
	version = "*",
	config = function()
		local bufferline = require("bufferline")
		bufferline.setup({
			options = {
				mode = "buffer", -- 或 "tabs"，根据需要选择
				separator_style = "slant", -- 标签分隔符样式，可选 "slant"、"thin" 等
				always_show_bufferline = true,
				show_buffer_close_icons = true,
				show_close_icon = true,
				color_icons = true, -- 启用图标颜色
				diagnostics = "nvim_lsp", -- 启用 LSP 诊断信息
				diagnostics_indicator = function(count, level)
					local icon = level:match("error") and " " or " "
					return " " .. icon .. count
				end,
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						highlight = "Directory",
						text_align = "left",
					},
				},
				numbers = function(opts)
					return string.format("%s", opts.ordinal)
				end,
			},
		})
	end,
}
