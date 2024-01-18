return {
	cmd = "Telescope",
	keys = {
		{ "<leader>p",  ":Telescope find_files<CR>", desc = "find files" },
		{ "<leader>P",  ":Telescope live_grep<CR>",  desc = "grap file" },
		{ "<leader>rs", ":Telescope resume<CR>",     desc = "resume" },
		{ "<leader>q",  ":Telescope oldfiles<CR>",   desc = "old files" },
	},
	'nvim-telescope/telescope.nvim',
	tag = '0.1.1',
	-- or                              , branch = '0.1.1',
	dependencies = { 'nvim-lua/plenary.nvim' },
}
