return {
	"saghen/blink.cmp",
	-- optional: provides snippets for the snippet source
	dependencies = {
		"rafamadriz/friendly-snippets",
		{
			"saghen/blink.compat",
			optional = true,
			version = "*",
		},
		{ "L3MON4D3/LuaSnip", version = "v2.*" },
	},
	version = "1.*",
	-- build = "cargo build --release",
	opts = {
		snippets = { preset = "luasnip" },
		appearance = {
			use_nvim_cmp_as_default = false,
			nerd_font_variant = "mono",
		},
		signature = { enabled = true },

		completion = {
			accept = {
				auto_brackets = {
					enabled = true,
				},
			},
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 200,
				treesitter_highlighting = true,
			},
			ghost_text = {
				enabled = vim.g.ai_cmp,
			},
			menu = {
				draw = {
					-- We don't need label_description now because label and label_description are already
					-- combined together in label by colorful-menu.nvim.
					columns = { { "kind_icon" }, { "label", gap = 1 } },
					treesitter = { "lsp" },
					components = {
						label = {
							text = function(ctx)
								return require("colorful-menu").blink_components_text(ctx)
							end,
							highlight = function(ctx)
								return require("colorful-menu").blink_components_highlight(ctx)
							end,
						},
						kind_icon = {
							highlight = function(ctx)
								return { { group = ctx.kind_hl, priority = 20000 } }
							end,
						},
					},
				},
			},
			list = {
				selection = { preselect = true, auto_insert = false },
			},
		},
		cmdline = {
			keymap = {
				["<Tab>"] = { "accept" },
				["<CR>"] = { "accept_and_enter", "fallback" },
			},
			-- (optionally) automatically show the menu
			completion = { menu = { auto_show = true } },
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
			providers = {
				cmdline = {
					min_keyword_length = function(ctx)
						-- when typing a command, only show when the keyword is 3 characters or longer
						if ctx.mode == "cmdline" and string.find(ctx.line, " ") == nil then
							return 3
						end
						return 0
					end,
				},
			},
		},
		keymap = {
			preset = "default",
			["<CR>"] = { "accept", "fallback" },
			["<Up>"] = { "select_prev", "fallback" },
			["<Down>"] = { "select_next", "fallback" },
			["<C-j>"] = { "select_next", "fallback" },
			["<C-k>"] = { "select_prev", "fallback" },
			["<Tab>"] = { "select_next", "fallback" },
			["<S-Tab>"] = { "select_next", "fallback" },
			-- disable a keymap from the preset
			["<C-e>"] = {},

			-- show with a list of providers
			["<C-space>"] = {
				function(cmp)
					cmp.show({ providers = { "snippets" } })
				end,
			},

			-- control whether the next command will be run when using a function
			["<C-n>"] = {
				function(cmp)
					if some_condition then
						return
					end -- runs the next command
					return true -- doesn't run the next command
				end,
				"select_next",
			},
		},
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
}
