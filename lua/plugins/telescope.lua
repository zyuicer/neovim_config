return {
	cmd = "Telescope",
	keys = {
		{ "<leader>p",  ":Telescope find_files<CR>", desc = "find files" },
		{ "<leader>P",  ":Telescope live_grep<CR>",  desc = "grap file" },
		{ "<leader>rs", ":Telescope resume<CR>",     desc = "resume" },
		{ "<leader>q",  ":Telescope oldfiles<CR>",   desc = "old files" },
		{ "<leader>n", ":Telescope  current_buffer_fuzzy_find<CR>", desc = "find active current file" }
	},
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
	dependencies = { 'nvim-lua/plenary.nvim' },
}
