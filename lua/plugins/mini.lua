local M = {
	"echasnovski/mini.nvim",
	config = function()
		require("mini.bracketed").setup()
		require("mini.surround").setup()
		require("mini.bufremove").setup()
		require("mini.move").setup()
		require("mini.pick").setup()
		require("mini.basics").setup()
		require("mini.cursorword").setup()
		require("mini.indentscope").setup({ symbol = "▏" })
		require("mini.files").setup({
			-- Customization of shown content
			content = {
				-- Predicate for which file system entries to show
				filter = nil,
				-- In which order to show file system entries
				sort = nil,
			},

			-- Module mappings created only inside explorer.
			-- Use `''` (empty string) to not create one.
			mappings = {
				close = "q",
				go_in = "l",
				go_in_plus = "L",
				go_out = "h",
				go_out_plus = "H",
				reset = "<BS>",
				show_help = "g?",
				synchronize = "=",
				trim_left = "<",
				trim_right = ">",
			},

			-- General options
			options = {
				-- Whether to use for editing directories
				use_as_default_explorer = true,
			},

			-- Customization of explorer windows
			windows = {
				-- Maximum number of windows to show side by side
				max_number = math.huge,
				-- Whether to show preview of directory under cursor
				preview = false,
				-- Width of focused window
				width_focus = 50,
				-- Width of non-focused window
				width_nofocus = 15,
			},
		})
		-- require("mini.indentscope").setup({ symbol = "▏" })
	end,
	event = "VeryLazy",
}
return M
