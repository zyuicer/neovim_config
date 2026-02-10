---@type LazySpec
return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	event = "VeryLazy",
	config = function()
		local harpoon = require("harpoon")
		local fzf = require("fzf-lua")
		harpoon.setup()

		vim.keymap.set("n", "<leader>hh", function()
			print("Push file to harpoon list")
			harpoon:list():add()
		end, { noremap = true, silent = true, desc = "Add file to harpoon" })

		vim.keymap.set("n", "<leader>hd", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Harpoon fzf (ctrl-x remove)" })

		vim.keymap.set("n", "<leader>hp", function()
			local items = harpoon:list().items
			local entries = {}

			for i, item in ipairs(items) do
				entries[i] = item.value
			end

			require("fzf-lua").fzf_exec(entries, {
				prompt = "Harpoon> ",
				previewer = "builtin",
				actions = {
					["default"] = function(selected, opts)
						for i, path in ipairs(entries) do
							if path == selected[1] then
								harpoon:list():select(i)
								break
							end
						end
					end,
				},
			})
		end, { noremap = true, silent = true, desc = "Select harpoon list file" })
	end,
}
