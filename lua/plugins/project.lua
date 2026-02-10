return {
	"ahmedkhalf/project.nvim",
	config = function()
		require("project_nvim").setup({
			detection_methods = {},
			patterns = {
				".git",
				"package.json",
				"Cargo.toml",
				"go.mod",
				"Makefile",
			},
			silent_chdir = false,
			manual_mode = false,
		})
		-- 手动添加project
		vim.keymap.set("n", "Pp", function()
			local cwd = vim.fn.getcwd()
			local history_file = vim.fn.stdpath("data") .. "/project_nvim/project_history"

			local projects = {}
			local exists_index = nil

			-- 读取已有 projects
			local f = io.open(history_file, "r")
			if f then
				local idx = 1
				for line in f:lines() do
					if line == cwd then
						exists_index = idx -- 记住它在第几行
					else
						table.insert(projects, line) -- 只保留不是当前 cwd 的
					end
					idx = idx + 1
				end
				f:close()
			end

			if exists_index then
				-- 已存在：执行删除
				local wf = io.open(history_file, "w")
				for _, p in ipairs(projects) do
					wf:write(p .. "\n")
				end
				wf:close()

				print("Removed project: " .. cwd)
			else
				-- 不存在：添加到最前面
				table.insert(projects, 1, cwd)

				local wf = io.open(history_file, "w")
				for _, p in ipairs(projects) do
					wf:write(p .. "\n")
				end
				wf:close()

				print("Added project: " .. cwd)
			end
		end, { desc = "Toggle current dir in project list" })

		-- 打开project选择
		vim.keymap.set("n", "<leader>op", function()
			local history = require("project_nvim").get_recent_projects()
			require("fzf-lua").fzf_exec(history, {
				prompt = "Recent Projects> ",
				actions = {
					["default"] = function(selected)
						local dir = selected[1]
						vim.cmd("cd " .. dir)
						vim.cmd("e .")
					end,
				},
			})
		end, { desc = "Recent Projects" })
	end,
}
