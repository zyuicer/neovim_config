return {
	"rmagatti/auto-session",
	lazy = false,
	enabled = false,

	---enables autocomplete for opts
	---@module "auto-session"
	opts = {
		suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
		-- log_level = 'debug',
	},
}
