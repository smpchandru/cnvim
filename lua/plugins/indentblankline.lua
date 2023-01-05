local M = {
	"lukas-reineke/indent-blankline.nvim",
}

M.config = function()
	vim.g.indent_blankline_buftype_exclude = { "terminal" }
	vim.g.indent_blankline_filetype_exclude = { "help", "startify", "dashboard", "packer", "neogitstatus" }
	vim.g.indent_blankline_char = "▏"
	vim.g.indent_blankline_context_char = "▏"
	--vim.g.indent_blankline_char = "|"
	vim.g.indent_blankline_use_treesitter = false
	vim.g.indent_blankline_show_trailing_blankline_indent = false
	vim.g.indent_blankline_show_current_context = true
	vim.g.indent_blankline_context_patterns = {
		"class",
		"return",
		"function",
		"method",
		"^if",
		"^while",
		"jsx_element",
		"^for",
		"^object",
		"^table",
		"block",
		"arguments",
		"if_statement",
		"else_clause",
		"jsx_element",
		"jsx_self_closing_element",
		"try_statement",
		"catch_clause",
		"import_statement",
		"operation_type",
	}
	vim.opt.list = true
	-- vim.opt.listchars:append("space:⋅")
	vim.opt.listchars:append("eol:↴")
	require("indent_blankline").setup({
		space_char_blankline = " ",
		show_current_context = true,
		show_current_context_start = true,
	})
end
return M
