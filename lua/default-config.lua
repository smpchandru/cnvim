CONFIG_PATH = vim.fn.stdpath("config")
DATA_PATH = vim.fn.stdpath("data")
CACHE_PATH = vim.fn.stdpath("cache")
local g = vim.g
local disabled_built_ins = {
	"2html_plugin",
	"getscript",
	"getscriptPlugin",
	"gzip",
	"logipat",
	"matchit",
	"matchparen",
	"tar",
	"tarPlugin",
	"rrhelper",
	"vimball",
	"vimballPlugin",
	"zip",
	"zipPlugin",
}

for _, plugin in pairs(disabled_built_ins) do
	g["loaded_" .. plugin] = 1
end

O = {
	colorscheme = "gruvbox-material",
	leader_key = " ",
	hidden_files = true,
	wrap_lines = false,
	number = true,
	relative_number = true,
	cursorline = true,
	shell = "bash",
	timeoutlen = 100,
	auto_complete = false,
	nvim_tree_disable_netrw = 0,
	database = { save_location = "~/.config/nvcode_db", auto_execute = 1 },
	inlineBlame = false,
	plugin = {
		hop = { enable = false },
		matchup = { enable = true },
		surround = { enable = false },
		vim_repeat = { enable = false },
		highlightedyank = { enable = false },
		tabular = { enable = false },
		fugitive = { enable = false },
		easyclip = { enable = false },
		gitsigns = { enable = false },
		gitmessenger = { enable = false },
		neogit = { enable = false },
		bqbf = { enable = false },
		vim_grepper = { enable = false },
		telescope = { enable = false },
		vim_peekup = { enable = false },
		quick_scope = { enable = false },
		choosewin = { enable = false },
		vim_go = { enable = true },
		galaxyline = { enable = true },
		barbar = { enable = false },
		sumneko = { enable = false },
		markdown_preview = { enable = false },
		floaterm = { enable = true },
		nuake = { enable = true },
		nvimtree = { enable = false },
		nvcode = { enable = false },
		treesitter = { enable = false },
		indentblankline = { enable = false },
		whichkey = { enable = false },
		visul_multi = { enable = false },
		vcolor = { enable = false },
		puml_syntax = { enable = false },
		popup = { enable = false },
		radical = { enable = false },
		delve = { enable = false },
		symbol_outline = { enable = false },
		lens = { enable = false },
		kommentary = { enable = false },
		dashboard = { enable = false },
	},
}
