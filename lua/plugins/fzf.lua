--[[ 检索文件插件 ]]
return {
	"ibhagwan/fzf-lua",
	cmd = "FzfLua",
	event = "VeryLazy",
	dependencies = { "junegunn/fzf", "nvim-tree/nvim-web-devicons" }, -- 确保 fzf 插件已安装
	keys = {
		{
			"<leader>p",
			":FzfLua files<CR>",
			desc = "Find the file than open",
		},
		{
			"<leader>P",
			":FzfLua live_grep<CR>",
			desc = "Fuzzy find the file than open",
		},
		{
			"-",
			":FzfLua buffers<CR>",
			desc = "Fuzzy find file into buffers",
		},
		{
			"<leader>n",
			":FzfLua blines<CR>",
			desc = "Fuzzy find the file than open",
		},
		{
			"<leader>ch",
			":FzfLua command_history<CR>",
		},
		{
			"<leader>H",
			":FzfLua jumps<CR>",
		},
		{
			"<leader>cc",
			":FzfLua commands<CR>",
			{
				desc = "Input command",
				noremap = true,
				silent = true,
			},
		},
	},
	config = function()
		require("fzf-lua").setup({
			winopts = {
				height = 0.9, -- 设置 fzf 窗口的高度
				width = 0.75, -- 设置 fzf 窗口的宽度
				preview = {
					hidden = "nohidden", -- 显示隐藏文件
					wrap = "wrap",
				},
			},
			actions = {
				files = {
					["default"] = function(selected, opts)
						require("fzf-lua").actions.file_edit(selected, opts)
					end,
				},
			},
			colorschemes = {
				enable_preview = true, -- ✅ 预览切换效果
			},
			fzf_opts = {
				-- options are sent as `<left>=<right>`
				-- set to `false` to remove a flag
				-- set to `true` for a no-value flag
				-- for raw args use `fzf_args` instead
				["--ansi"] = true,
				["--info"] = "inline-right", -- fzf < v0.42 = "inline"
				["--height"] = "100%",
				["--layout"] = "reverse",
				["--border"] = "none",
				["--highlight-line"] = true, -- fzf >= v0.53
			},
			fzf_colors = {
				-- the auto-generated theme similar to `fzf_colors=true`
				["fg"] = { "fg", "CursorLine" },
				["hl"] = { "fg", "Comment" },
				["bg"] = { "bg", "Normal" },
				["fg+"] = { "fg", "Normal", "underline" },
				["bg+"] = { "bg", { "CursorLine", "Normal" } },
				["hl+"] = { "fg", "Statement" },
				["info"] = { "fg", "PreProc" },
				["prompt"] = { "fg", "Exception" },
				["pointer"] = { "fg", "Exception" },
				["marker"] = { "fg", "Keyword" },
				["spinner"] = { "fg", "Label" },
				["header"] = { "fg", "Comment" },
				["gutter"] = "-1",
			},
			hls = {
				normal = "Normal", -- highlight group for normal fg/bg
				preview_normal = "Normal", -- highlight group for preview fg/bg
				border = "FloatBorder",
			},
		})
	end,
}
