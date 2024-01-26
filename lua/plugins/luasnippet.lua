return {
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp",
	after = "nvim-cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	config = function()
		local ls = require("luasnip")
		local snip = ls.snippet
		local node = ls.snippet_node
		local text = ls.text_node
		local insert = ls.insert_node
		local func = ls.function_node
		local choice = ls.choice_node
		local dynamicn = ls.dynamic_node

		ls.add_snippets(nil, {
			all = {
				snip({
					trig = "vuesetup",
					namr = "VueSetup",
					dscr = "vue setup ",
				}, {
					text({
						'<script lang="ts" setup></script>',
						"<template></template>",
					}),
				}),
			},
		})
	end,
}
