return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = "VeryLazy",
	config = function()
		require("nvim-treesitter.configs").setup({
			-- A list of parser names, or "all" (the five listed parsers should always be installed)
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"vue",
				"javascript",
				"typescript",
				"rust",
				"html",
				"css",
				"go",
				"dart",
				"scss",
				"tsx",
			},

			-- Install parsers synchronously (only applied to `ensure_installed`)
			sync_install = false,

			-- Automatically install missing parsers when entering buffer
			-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
			auto_install = true,
			-- List of parsers to ignore installing (for "all")
			-- ignore_install = { "javascript" },
			-- 启用基于Treesitter的代码格式化(=) . NOTE: This is an experimental feature.
			indent = {
				enable = true,
			},
			---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
			-- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

			highlight = {
				enable = true,
				-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
				-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
				-- Using this option may slow down your editor, and you may see some duplicate highlights.
				-- Instead of true it can also be a list of languages
				additional_vim_regex_highlighting = false,
			},
		})

		vim.wo.foldmethod = "expr"
		vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
		vim.wo.foldlevel = 99
	end,
}
