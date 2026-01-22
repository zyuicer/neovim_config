--[[ 代码提示 ]]
return {
	event = "VeryLazy",
	enabled = false,
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"saadparwaiz1/cmp_luasnip",
	},
	config = function()
		-- local luasnip = require("luasnip")
		-- local cmp = require("cmp")
		-- local cmp_autopairs = require("nvim-autopairs.completion.cmp")
		-- cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
		--
		-- local has_words_before = function()
		-- 	unpack = unpack or table.unpack
		-- 	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
		-- 	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
		-- end
		--
		-- cmp.setup({
		-- 	snippet = {
		-- 		-- REQUIRED - you must specify a snippet engine
		-- 		expand = function(args)
		-- 			-- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
		-- 			require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
		-- 			-- require('snippy').expand_snippet(args.body) -- For `snippy` users.
		-- 			-- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
		-- 		end,
		-- 	},
		-- 	window = {
		-- 		completion = nil,
		-- 		documentation = cmp.config.disable, -- 关闭 cmp 文档浮窗
		-- 	},
		-- 	mapping = cmp.mapping.preset.insert({
		-- 		["<Tab>"] = cmp.mapping(function(fallback)
		-- 			if cmp.visible() then
		-- 				cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
		-- 			-- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
		-- 			-- they way you will only jump inside the snippet region
		-- 			elseif luasnip.expand_or_jumpable() then
		-- 				luasnip.expand_or_jump()
		-- 			elseif has_words_before() then
		-- 				cmp.complete()
		-- 			else
		-- 				fallback()
		-- 			end
		-- 		end, { "i", "s" }),
		-- 		["<CR>"] = cmp.mapping(function(fallback)
		-- 			if cmp.visible() then
		-- 				-- 如果有补全菜单：确认补全项
		-- 				if cmp.get_selected_entry() then
		-- 					cmp.confirm({ select = false })
		-- 				else
		-- 					cmp.confirm({ select = true })
		-- 				end
		-- 			else
		-- 				-- 没有补全菜单：执行默认回车（交给 autopairs / snippet）
		-- 				fallback()
		-- 			end
		-- 		end, { "i", "s" }),
		-- 		["<S-Tab>"] = cmp.mapping(function(fallback)
		-- 			if cmp.visible() then
		-- 				cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
		-- 			elseif luasnip.jumpable(-1) then
		-- 				luasnip.jump(-1)
		-- 			else
		-- 				fallback()
		-- 			end
		-- 		end, { "i", "s" }),
		--
		-- 		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		-- 		["<C-f>"] = cmp.mapping.scroll_docs(4),
		-- 		["<C-Space>"] = cmp.mapping.complete(),
		-- 		["<C-e>"] = cmp.mapping.abort(),
		-- 	}),
		-- 	sources = cmp.config.sources({
		-- 		{ name = "nvim_lsp", trigger_characters = { "-" } },
		-- 		{ name = "vsnip" }, -- For vsnip users.
		-- 		{ name = "luasnip" }, -- For luasnip users.
		-- 		-- { name = 'ultisnips' }, -- For ultisnips users.
		-- 		-- { name = 'snippy' }, -- For snippy users.
		-- 	}, {
		-- 		{ name = "buffer" },
		-- 	}),
		-- 	formatting = {
		-- 		format = function(entry, vim_item)
		-- 			vim_item.menu = ({
		-- 				nvim_lsp = "[LSP]",
		-- 				luasnip = "[Snippet]",
		-- 				path = "[Path]",
		-- 				buffer = "[Buffer]",
		-- 			})[entry.source.name]
		-- 			return vim_item
		-- 		end,
		-- 	},
		-- })
		--
		-- -- Set configuration for specific filetype.
		-- cmp.setup.filetype("gitcommit", {
		-- 	sources = cmp.config.sources({
		-- 		{ name = "git" }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
		-- 	}, {
		-- 		{ name = "buffer" },
		-- 	}),
		-- })
		--
		-- -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
		-- cmp.setup.cmdline({ "/", "?" }, {
		-- 	mapping = cmp.mapping.preset.cmdline(),
		-- 	sources = {
		-- 		{ name = "buffer" },
		-- 	},
		-- })
		--
		-- -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
		-- cmp.setup.cmdline(":", {
		-- 	mapping = cmp.mapping.preset.cmdline(),
		-- 	sources = cmp.config.sources({
		-- 		{ name = "path" },
		-- 	}, {
		-- 		{ name = "cmdline" },
		-- 	}),
		-- 	completion = {
		-- 		autocomplete = { cmp.ConfirmBehavior.Insert, cmp.ConfirmBehavior.Replace },
		-- 	},
		-- 	-- 启用 dressing.nvim 来美化补全
		-- 	window = {
		-- 		completion = cmp.config.window.bordered(),
		-- 		documentation = cmp.config.window.bordered(),
		-- 	},
		-- })
	end,
}
