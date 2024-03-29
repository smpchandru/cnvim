local M = {}
M.config = function()
	require("nvim-treesitter.configs").setup({
		ensure_installed = { "go", "yaml", "json", "python","rust","lua" }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
		-- TODO seems to be broken
		ignore_install = { "haskell" },
		highlight = {
			enable = true, -- false will disable the whole extension
		},
		playground = {
			enable = true,
			disable = {},
			updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
			persist_queries = false, -- Whether the query persists across vim sessions
			keybindings = {
				toggle_query_editor = "o",
				toggle_hl_groups = "i",
				toggle_injected_languages = "t",
				toggle_anonymous_nodes = "a",
				toggle_language_display = "I",
				focus_language = "f",
				unfocus_language = "F",
				update = "R",
				goto_node = "<cr>",
				show_help = "?",
			},
		},
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = "gnn",
				node_incremental = "<c-up>",
				scope_incremental = "<a-up>",
				node_decremental = "<c-down>",
			},
		},
		indent = {
			enable = true,
			disable = { "go", "python" },
		},
		autopairs = { enable = true },
		rainbow = { enable = true },
		textobjects = {
			lsp_interop = {
				enable = true,
				border = "rounded",
				peek_definition_code = {
					["<leader>df"] = "@function.outer",
				},
			},
			select = {
				enable = true,
				lookahead = true,
				keymaps = {
					-- You can use the capture groups defined in textobjects.scm
					["af"] = "@function.outer",
					["if"] = "@function.inner",
					["al"] = "@loop.outer",
					["ac"] = "@conditional.outer",
				},
				-- You can choose the select mode (default is charwise 'v')
				--
				-- Can also be a function which gets passed a table with the keys
				-- * query_string: eg '@function.inner'
				-- * method: eg 'v' or 'o'
				-- and should return the mode ('v', 'V', or '<c-v>') or a table
				-- mapping query_strings to modes.
				selection_modes = {
					["@parameter.outer"] = "v", -- charwise
					["@function.outer"] = "V", -- linewise
					["@class.outer"] = "<c-v>", -- blockwise
				},
				-- If you set this to `true` (default is `false`) then any textobject is
				-- extended to include preceding or succeeding whitespace. Succeeding
				-- whitespace has priority in order to act similarly to eg the built-in
				-- `ap`.
				--
				-- Can also be a function which gets passed a table with the keys
				-- * query_string: eg '@function.inner'
				-- * selection_mode: eg 'v'
				-- and should return true of false
				include_surrounding_whitespace = false,
			},
		},
		refactor = {
			highlight_definitions = { enable = true },
			smart_rename = {
				enable = true,
				keymaps = {
					smart_rename = "grr",
				},
			},
			highlight_current_scope = {
				disable = {},
				enable = false,
				module_path = "nvim-treesitter-refactor.highlight_current_scope",
			},
		},
	})
end
return M
