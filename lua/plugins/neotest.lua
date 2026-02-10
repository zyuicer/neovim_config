--[[ 兼容各个测试的插件 ]]
return {
	"nvim-neotest/neotest",
	event = "VeryLazy",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		"marilari88/neotest-vitest",
		"nvim-neotest/neotest-jest",
		"rouge8/neotest-rust",
	},
	config = function()
		require("neotest").setup({
			adapters = {
				require("neotest-vitest")({
					-- Filter directories when searching for test files. Useful in large projects (see Filter directories notes).
					filter_dir = function(name, rel_path, root)
						return name ~= "node_modules"
					end,
				}),
				require("neotest-rust")({
					args = { "--no-capture" },
					dap_adapter = "lldb",
				}),
				require("neotest-jest")({
					jestCommand = "npm test --",
					jestConfigFile = "custom.jest.config.ts",
					env = { CI = true },
					cwd = function(path)
						return vim.fn.getcwd()
					end,
				}),
			},
		})
		local neot = require("neotest")
		--
		vim.keymap.set("n", "<C-t>t", function()
			print("testing...")
			neot.run.run()
		end, { desc = "Run nearest test" })

		vim.keymap.set("n", "<C-t>u", function()
			neot.summary.toggle()
		end, { desc = "Toggle Neotest Summary" })
	end,
}
