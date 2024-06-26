local M = {
	"lewis6991/gitsigns.nvim",
	event = "BufReadPre",
	dependencies = { "nvim-lua/plenary.nvim" },
}
M.config = function()
	require("gitsigns").setup({
		signs = {
			--add = { hl = "GitSignsAdd", text = "┃", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
			add = { hl = "GitSignsAdd", text = "┃", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
			change = { hl = "GitSignsChange", text = "┃", numhl = "GitSignsChangeNr",
				linehl = "GitSignsChangeLn" },
			delete = { hl = "GitSignsDelete", text = "┃", numhl = "GitSignsDeleteNr",
				linehl = "GitSignsDeleteLn" },
			topdelete = {
				hl = "GitSignsDelete",
				text = "┃",
				numhl = "GitSignsDeleteNr",
				linehl = "GitSignsDeleteLn",
			},
			changedelete = {
				hl = "GitSignsChange",
				text = "┃",
				numhl = "GitSignsChangeNr",
				linehl = "GitSignsChangeLn",
			},
		},
		numhl = true,
		linehl = false,
		-- keymaps = {
		-- 	-- Default keymap options
		-- 	noremap = true,
		-- 	buffer = true,
		-- 	["n ]c"] = { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'" },
		-- 	["n [c"] = { expr = true, "&diff ? '[c' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'" },
		-- 	["n <leader>hs"] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
		-- 	["n <leader>hu"] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
		-- 	["n <leader>hr"] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
		-- 	["n <leader>hR"] = '<cmd>lua require"gitsigns".reset_buffer()<CR>',
		-- 	["n <leader>hp"] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
		-- 	["n <leader>hb"] = '<cmd>lua require"gitsigns".blame_line()<CR>',
		-- 	-- Text objects
		-- 	["o ih"] = ':<C-U>lua require"gitsigns".text_object()<CR>',
		-- 	["x ih"] = ':<C-U>lua require"gitsigns".text_object()<CR>',
		-- },
		on_attach = function(bufnr)
			local gs = package.loaded.gitsigns

			local function map(mode, l, r, opts)
				opts = opts or {}
				opts.buffer = bufnr
				vim.keymap.set(mode, l, r, opts)
			end

			-- Navigation
			map("n", "]c", function()
				if vim.wo.diff then
					return "]c"
				end
				vim.schedule(function()
					gs.next_hunk()
				end)
				return "<Ignore>"
			end, { expr = true })

			map("n", "[c", function()
				if vim.wo.diff then
					return "[c"
				end
				vim.schedule(function()
					gs.prev_hunk()
				end)
				return "<Ignore>"
			end, { expr = true })

			-- Actions
			map("n", "<leader>hs", gs.stage_hunk)
			map("n", "<leader>hr", gs.reset_hunk)
			map("v", "<leader>hs", function()
				gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end)
			map("v", "<leader>hr", function()
				gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end)
			map("n", "<leader>hS", gs.stage_buffer)
			map("n", "<leader>hu", gs.undo_stage_hunk)
			map("n", "<leader>hR", gs.reset_buffer)
			map("n", "<leader>hp", gs.preview_hunk)
			map("n", "<leader>hb", function()
				gs.blame_line({ full = true })
			end)
			map("n", "<leader>tb", gs.toggle_current_line_blame)
			map("n", "<leader>hd", gs.diffthis)
			map("n", "<leader>hD", function()
				gs.diffthis("~")
			end)
			map("n", "<leader>td", gs.toggle_deleted)

			-- Text object
			map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>")
		end,
		watch_gitdir = {
			interval = 1000,
		},
		diff_opts = {
			internal = true,
		},
		sign_priority = 6,
		update_debounce = 100,
		status_formatter = nil, -- Use default
	})
end
return M
