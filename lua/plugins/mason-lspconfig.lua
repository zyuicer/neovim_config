--[[ 后台服务 LSP提示 ]]
return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = { "mason-org/mason.nvim", "neovim/nvim-lspconfig" },
	config = function()
		require("mason").setup()
		vim.keymap.set("n", "<leader>ce", vim.diagnostic.open_float)
		vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
		vim.keymap.set("n", "]d", vim.diagnostic.goto_next)

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				local client = vim.lsp.get_client_by_id(ev.data.client_id)

				if client and client.server_capabilities.documentSymbolProvider then
					require("nvim-navic").attach(client, ev.buf)
				end
				-- Enable completion triggered by <c-x><c-o>
				vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

				-- Buffer local mappings.
				-- See `:help vim.lsp.*` for documentation on any of the below functions
				local opts = { buffer = ev.buf }
				vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
				vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
				vim.keymap.set("n", "gk", vim.lsp.buf.signature_help, opts)

				vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts)
				vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts)
				vim.keymap.set("n", "<leader>e", function()
					if vim.fn.getqflist({ winid = 0 }).winid ~= 0 then
						vim.cmd("cclose")
					else
						vim.cmd("copen")
					end
				end, { silent = true, noremap = true })

				vim.keymap.set("n", "<leader>wl", function()
					print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
				end, opts)
				vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
				vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
				vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
				vim.keymap.set({ "n", "v" }, "<leader>a", vim.lsp.buf.code_action, opts)
			end,
		})

		vim.api.nvim_create_autocmd("DiagnosticChanged", {
			callback = function()
				vim.diagnostic.setqflist({ open = false }) -- 只刷新 QuickFix，不自动打开
			end,
		})

		require("mason-lspconfig").setup({
			ensure_installed = { "rust_analyzer", "lua_ls", "clangd", "ts_ls" }, -- 你需要的语言服务
			automatic_installation = true,
		})

		require("lsp.init")
	end,
}
