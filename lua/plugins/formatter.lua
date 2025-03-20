--[[ 初始化插件 ]]
return {
	"mhartington/formatter.nvim",
	config = function()
		local util = require("formatter.util")

		-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
		require("formatter").setup({
			-- Enable or disable logging
			logging = true,
			-- Set the log level
			log_level = vim.log.levels.WARN,
			-- All formatter configurations are opt-in
			filetype = {
				-- Formatter configurations for filetype "lua" go here
				-- and will be executed in order
				lua = {
					-- "formatter.filetypes.lua" defines default configurations for the
					-- "lua" filetype
					require("formatter.filetypes.lua").stylua,
				},
				css = {
					require("formatter.filetypes.css").prettier,
				},
				javascript = {
					require("formatter.filetypes.javascript").prettier,
				},
				typescriptreact = {
					require("formatter.filetypes.typescriptreact").prettier,
				},
				typescript = {
					require("formatter.filetypes.typescript").prettier,
				},
				vue = {
					require("formatter.filetypes.vue").prettier,
				},
				rust = {
					require("formatter.filetypes.rust").rustfmt,
				},
				json = {
					require("formatter.filetypes.json").prettier,
				},
				go = {
					require("formatter.filetypes.go").gofmt,
				},

				-- Use the special "*" filetype for defining formatter configurations on
				-- any filetype
				["*"] = {
					-- "formatter.filetypes.any" defines default configurations for any
					-- filetype
					require("formatter.filetypes.any").remove_trailing_whitespace,
				},
			},
		})
	end,
}
