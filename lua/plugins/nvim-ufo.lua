return {
	"kevinhwang91/nvim-ufo",
	dependencies = "kevinhwang91/promise-async",
	event = "VeryLazy",
	init = function()
		-- 保证加载时不会折叠
		vim.o.foldenable = false
		vim.o.foldlevel = 99
		vim.o.foldlevelstart = 99
	end,
	config = function()
		require("ufo").setup({
			open_fold_hl_timeout = 0,
			close_fold_kinds_for_ft = {},
			provider_selector = function(bufnr, filetype, buftype)
				return { "treesitter", "indent" }
			end,
		})
	end,
}
