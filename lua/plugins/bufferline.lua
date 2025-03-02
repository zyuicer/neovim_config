vim.opt.termguicolors = true
return {
	"akinsho/bufferline.nvim",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				mode = "buffers", -- 显示 buffer 而不是 tabs
				close_command = "bdelete! %d", -- 点击关闭按钮关闭
				right_mouse_command = "bdelete! %d", -- 右键点击关闭
				diagnostics = "nvim_lsp", -- 显示 LSP 诊断信息
				separator_style = "slant",
				color_icons = true,
				buffer_close_icon = "󰅖",
				modified_icon = "●",
				close_icon = "",
				show_buffer_icons = true,
				show_buffer_close_icons = true,
				show_tab_indicators = true,
				always_show_bufferline = true,
				offsets = {
					{
						text_align = "left",
						filetype = "NvimTree",
						text = "File Explorer",
						highlight = "Directory",
						separator = true, -- 在 NvimTree 和 buffers 之间加一条分割线
					},
				},
				highlights = {
					buffer_selected = {
						gui = "bold",
						italic = false,
					},
					separator_selected = {
						fg = "#ffcc00", -- 选中 buffer 的分割线颜色
					},
				},
			},
		})
	end,
}
