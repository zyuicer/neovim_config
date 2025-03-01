return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	event = "VeryLazy",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		-- optionally enable 24-bit colour
		vim.opt.termguicolors = true
		-- OR setup with some options
		require("nvim-tree").setup({
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
			},
			filters = {
				dotfiles = false,
			},
			update_focused_file = {
				enable = true, -- 启用自动定位
				update_cwd = false, -- 更新当前工作目录
				ignore_list = {}, -- 忽略列表中的文件不会触发定位
			},
		})
		require("nvim-web-devicons").setup({
			-- your personnal icons can go here (to override)
			-- you can specify color or cterm_color instead of specifying both of them
			-- DevIcon will be appended to `name`
			override = {
				zsh = {
					icon = "",
					color = "#428850",
					cterm_color = "65",
					name = "Zsh",
				},
			},
			-- globally enable different highlight colors per icon (default to true)
			-- if set to false all icons will have the default icon's color
			color_icons = true,
			-- globally enable default icons (default to false)
			-- will get overriden by `get_icons` option
			default = true,
			-- globally enable "strict" selection of icons - icon will be looked up in
			-- different tables, first by filename, and if not found by extension; this
			-- prevents cases when file doesn't have any extension but still gets some icon
			-- because its name happened to match some extension (default to false)
			strict = true,
			-- same as `override` but specifically for overrides by filename
			-- takes effect when `strict` is true
			override_by_filename = {
				[".gitignore"] = {
					icon = "",
					color = "#f1502f",
					name = "Gitignore",
				},
			},

			override_by_filename = {
				[".prettierrc"] = {
					icon = "",
					color = "#f1502f",
					name = "Gitignore",
				},
			},
			-- same as `override` but specifically for overrides by extension
			-- takes effect when `strict` is true
			override_by_extension = {
				["log"] = {
					icon = "",
					color = "#81e043",
					name = "Log",
				},
			},
		})
	end,
}
