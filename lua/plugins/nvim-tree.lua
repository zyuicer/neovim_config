--[[ 文件结构展示 ]]
---@type LazySpec
return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	dependencies = {},
	event = "VeryLazy",
	enabled = true,
	config = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
		-- optionally enable 24-bit colour
		vim.opt.termguicolors = true

		local function my_on_attach(bufnr)
			local api = require("nvim-tree.api")
			vim.api.nvim_set_hl(0, "NvimTreeCursorLine", {
				bg = "#2e3440",
				fg = "#7aa2f7",
				bold = true,
			})

			local function opts(desc)
				return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
			end

			-- default mappings
			api.config.mappings.default_on_attach(bufnr)
		end

		-- OR setup with some options
		require("nvim-tree").setup({
			on_attach = my_on_attach,
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
				cursorline = true, -- 关键：启用 cursorline
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
