--[[ 文件结构展示 ]]
return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	event = "VeryLazy",
	dependencies = {},
	config = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
		-- optionally enable 24-bit colour
		vim.opt.termguicolors = true
		-- OR setup with some options
		require("nvim-tree").setup({
			sync_root_with_cwd = true,
			git = {
				ignore = false,
			},
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 40,
				preserve_window_proportions = true, -- 保持文件树的窗口比例（默认：true）
				side = "left", -- 设置侧边栏显示位置
				relativenumber = false,
			},
			renderer = {
				group_empty = true,
				indent_width = 1, -- 默认是 2，改成 1 会让缩进更紧凑
				indent_markers = {
					enable = true, -- 是否显示缩进连接线
				},
			},
			filters = {
				dotfiles = false,
			},
			update_focused_file = {
				enable = true, -- 启用自动定位
				update_cwd = true, -- 更新当前工作目录
				update_root = false, -- 若为 true，会更改 tree 的根目录
				ignore_list = {}, -- 忽略列表中的文件不会触发定位
			},
			-- actions = {
			-- 	remove_file = {
			-- 		close_window = true,
			-- 		trash = true,
			-- 		command = "trash", -- 使用 Linux/macOS 上的 `trash-cli`
			-- 	},
			-- },
		})
	end,
}
