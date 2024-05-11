return {
	event = "VeryLazy",
	"neovim/nvim-lspconfig",
	dependencies = { "williamboman/mason-lspconfig.nvim", "simrat39/rust-tools.nvim" },
	config = function()
		-- lsp:
		local lspconfig = require("lspconfig")
		vim.keymap.set("n", "<leader>c", vim.diagnostic.open_float)
		vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
		vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
		vim.keymap.set("n", "<leader>e", vim.diagnostic.setloclist)

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				-- Enable completion triggered by <c-x><c-o>
				vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

				-- Buffer local mappings.
				-- See `:help vim.lsp.*` for documentation on any of the below functions
				local opts = { buffer = ev.buf }
				vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
				vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
				vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
				vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts)
				vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts)
				vim.keymap.set("n", "<leader>wl", function()
					print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
				end, opts)
				vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
				vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
				vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
				vim.keymap.set("n", "<leader>f", ":FormatWrite<CR>", opts)
			end,
		})

		require("mason").setup()
		local util = require("lspconfig.util")
		require("mason-lspconfig").setup({
			ensure_installed = {
				"tsserver",
				"html",
				"rust_analyzer",
				"cssls",
				"eslint",
				"gopls",
				"volar",
			},
		})

		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		require("neodev").setup({
			-- add any options here, or leave empty to use the default settings
		})
		require("lspconfig").lua_ls.setup({
			capabilities = capabilities,
		})

		lspconfig.tsserver.setup({})
		lspconfig.gopls.setup({
			filetypes = {
				"go",
				"gomod",
				"gowork",
				"gotmpl",
			},
			root_dir = util.root_pattern("go.work", "go.mod", ".git"),
			single_file_support = true,
		})

		lspconfig.volar.setup({})

		lspconfig.rust_analyzer.setup({
			-- Server-specific settings. See `:help lspconfig-setup`
			settings = {
				["rust-analyzer"] = {},
			},
		}) -- Set up lspconfig.
		-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
		-- require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
		--	capabilities = capabilities
		--}
		local rt = require("rust-tools")

		rt.setup({
			server = {
				on_attach = function(_, bufnr)
					-- Hover actions
					vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
					-- Code action groups
					vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
				end,
			},
		})

		lspconfig.eslint.setup({})
		lspconfig.unocss.setup({
			filetypes = {},
			root_dir = function(fname)
				return require("lspconfig.util").root_pattern()(fname)
			end,
		})
	end,
}
