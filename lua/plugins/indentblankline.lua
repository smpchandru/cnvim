-- indent = { char = "▏" },
return {
	"lukas-reineke/indent-blankline.nvim",
	event = "VeryLazy",
	opts = {
		indent = {
			char = "▏",
			tab_char = "▏",
		},
		scope = {
			highlight = { "IndentBlanklineContextChar" },
			enabled = true,
		},
		exclude = {
			filetypes = {
				"help",
				"alpha",
				"dashboard",
				"neo-tree",
				"Trouble",
				"trouble",
				"lazy",
				"mason",
				"notify",
				"toggleterm",
				"lazyterm",
			},
		},
	},
	main = "ibl",
}
