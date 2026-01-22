return {
	settings = {
		["rust-analyzer"] = {
			inlayHints = {
				enable = true,
				typeHints = { enable = true },
				parameterHints = { enable = true },
				chainingHints = { enable = true },
			},
		},
	},
	on_attach = function(_, bufnr)
		if vim.lsp.inlay_hint then
			vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
		else
			vim.lsp.buf.inlay_hint(bufnr, true)
		end
	end,
}
