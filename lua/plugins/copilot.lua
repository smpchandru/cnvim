return {
	"zbirenbaum/copilot.lua",
	event = "InsertEnter",
	cmd = "Copilot",
	build = ":Copilot auth",
	config = function()
		require("copilot").setup({
			suggestion = {
				enabled = true,
				auto_trigger = true,
				keymap = {
					accept = "<C-l>",
					next = "<C-j>",
					prev = "<C-k>",
					dismiss = "<C-h>",
				},
			},
			panel = { enabled = false },
		})
	end,
}
