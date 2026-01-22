return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			async = true,
			lsp_fallback = true,
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform will run multiple formatters sequentially
				python = { "isort", "black" },
				-- You can customize some of the format options for the filetype (:help conform.format)
				rust = { "rustfmt", lsp_format = "fallback" },
				-- Conform will run the first available formatter
				javascript = { "oxc_fmt", "prettierd", stop_after_first = true },
				typescript = { "oxc_fmt", "prettierd", stop_after_first = true },
				javascriptreact = { "oxc_fmt", "prettierd", stop_after_first = true },
				typescriptreact = { "oxc_fmt", "prettierd", stop_after_first = true },
				vue = { "prettierd", "oxc_fmt", lsp_format = "fallback" },
				css = { "css_beautify", "stylelint" },
				json = { "fixjson" },
				go = { "goimports", "gofmt" },
				c = { "clang_format" },
				cpp = { "clang_format" },
			},
			formatters = {
				oxc_fmt = {
					command = "oxc_fmt",
					args = { "--stdin", "--stdin-filepath", vim.api.nvim_buf_get_name(0) },
					stdin = true,
					condition = function()
						return vim.fn.executable("oxc_fmt") == 1
					end,
				},
				prettierd = {
					command = "prettierd",
					args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0) },
					stdin = true,
					condition = function()
						return vim.fn.executable("prettierd") == 1
					end,
				},
			},
			log_level = vim.log.levels.ERROR,
			-- Conform will notify you when a formatter errors
			notify_on_error = true,
			-- Conform will notify you when no formatters are available for the buffer
			notify_no_formatters = true,
		})
	end,
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({
					async = true,
					lsp_fallback = true,
				})
			end,
			mode = { "n", "v" },
			desc = "Format code with conform",
		},
	},
}
