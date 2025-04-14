-- this is a comment line in lua file
return {
	{ "tpope/vim-repeat", event = "InsertEnter" },
	{
		"tpope/vim-fugitive",
		dependencies = {
			"tommcdo/vim-fubitive",
		},
		event = "VeryLazy",
	},
	-- { "smpchandru/gruvbox-material" },
	-- { "kevinhwang91/nvim-bqf",    event = "VeryLazy",   enabled = false },
	{ "ThePrimeagen/vim-be-good", event = "VeryLazy" },
	{ "mg979/vim-visual-multi" },
	-- {
	--   "nvim-tree/nvim-web-devicons",
	-- },
	{
		"mlaursen/vim-react-snippets",
		event = "VeryLazy",
		enabled = false,
	},
	{
		"NvChad/nvim-colorizer.lua",
		-- event = "VeryLazy",
		config = true,
	},
	{
		"KabbAmine/vCoolor.vim",
		event = "VeryLazy",
	},
	{
		"NeogitOrg/neogit",
		event = "VeryLazy",
		-- branch = "nightly",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = true,
	},
	{
		"HiPhish/rainbow-delimiters.nvim",
	},
	{
		"tpope/vim-dadbod",
		event = "VeryLazy",
		dependencies = {
			"kristijanhusak/vim-dadbod-completion",
			"kristijanhusak/vim-dadbod-ui",
		},
	},
	-- lazy.nvim
	{
		"m4xshen/hardtime.nvim",
		dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
		opts = {},
	},
	{
		"tris203/precognition.nvim",
		enabled = false,
		opts = {
			startVisible = true,
			showBlankVirtLine = true,
			gutterHints = {
				--     -- prio is not currently used for gutter hints
				G = { text = "", prio = 0 },
				gg = { text = "", prio = 0 },
				PrevParagraph = { text = "", prio = 0 },
				NextParagraph = { text = "", prio = 0 },
			},
		},
	},
	{
		"christoomey/vim-tmux-navigator",
		cmd = {
			"TmuxNavigateLeft",
			"TmuxNavigateDown",
			"TmuxNavigateUp",
			"TmuxNavigateRight",
			"TmuxNavigatePrevious",
		},
		keys = {
			{ "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
			{ "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
			{ "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
			{ "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
			{ "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
		},
	},
	-- { "echasnovski/mini.pairs", enabled = false },
	-- { "folke/noice.nvim", enabled = false },
}
